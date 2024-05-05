#!/bin/bash
_isInstalledPacman() {
    package="$1";
    check="$(sudo pacman -Qs --color always "${package}" | grep "local" | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

_isInstalledYay() {
    package="$1";
    check="$(yay -Qs --color always "${package}" | grep "local" | grep "\." | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

_isFolderEmpty() {
    folder="$1"
    if [ -d $folder ] ;then
        if [ -z "$(ls -A $folder)" ]; then
            echo 0
        else
            echo 1
        fi
    else
        echo 1
    fi
}

_installPackagesPacman() {
    toInstall=();
    for pkg; do
        if [[ $(_isInstalledPacman "${pkg}") == 0 ]]; then
            echo ":: ${pkg} is already installed.";
            continue;
        fi;
        toInstall+=("${pkg}");
    done;

    if [[ "${toInstall[@]}" == "" ]] ; then
        # echo "All pacman packages are already installed.";
        return;
    fi;

    # printf "Package not installed:\n%s\n" "${toInstall[@]}";
    sudo pacman --noconfirm -S "${toInstall[@]}";
}

_installPackagesYay() {
    toInstall=();
    for pkg; do
        if [[ $(_isInstalledYay "${pkg}") == 0 ]]; then
            echo ":: ${pkg} is already installed.";
            continue;
        fi;
        toInstall+=("${pkg}");
    done;

    if [[ "${toInstall[@]}" == "" ]] ; then
        # echo "All packages are already installed.";
        return;
    fi;

    # printf "AUR packags not installed:\n%s\n" "${toInstall[@]}";
    yay --noconfirm -S "${toInstall[@]}";
}

_installSymLink() {
    symlink="$1";
    linksource="$2";
    linktarget="$3";
    
    if [ -L "${symlink}" ]; then
    # is a symlink
        rm ${symlink}
        ln -s ${linksource} ${linktarget} 
        echo ":: Symlink ${linksource} -> ${linktarget} created."
    elif [ -d ${symlink} ]; then
    # is a dir
        rm -rf ${symlink}/ 
        ln -s ${linksource} ${linktarget}
        echo ":: Symlink for directory ${linksource} -> ${linktarget} created."
    elif [ -f ${symlink} ]; then
    # is a file
        rm ${symlink} 
        ln -s ${linksource} ${linktarget} 
        echo ":: Symlink to file ${linksource} -> ${linktarget} created."
    else
        ln -s ${linksource} ${linktarget} 
        echo ":: New symlink ${linksource} -> ${linktarget} created."
    fi
}

_replaceLineInFile() {
    target_file=$1
    find_string="$2"
    new_string="$3"

    # Counters
    find_line_counter=0
    line_found=0

    if [ -f $target_file ] ;then

        # Detect Line
        while read -r line
        do
            ((find_line_counter++))
            if [[ $line = *$find_string* ]]; then
                line_found=$find_line_counter
                break
            fi 
        done < "$target_file"

        if [[ ! "$line_found" == "0" ]] ;then
            
            #Remove the line
            sed -i "$line_found d" $target_file

            # Add the new line
            sed -i "$line_found i $new_string" $target_file            

        else
            echo "ERROR: cannot find $find_string in $target_file."
            sleep 1
        fi   

    else
        echo "ERROR: $target_file not found."
        sleep 1
    fi
}

_addLineToFile() {
    new_string="$1"
    target_file="$2"

    if [[ -f $target_file ]]; then
        echo $new_string >> $target_file
    else
        echo "ERROR: $target_file not found."
        sleep 1
    fi
}

_moveExtensionGSchemas() {
    uuid="$1"
    name="$2"
    schema_file="$HOME/.local/share/gnome-shell/extensions/$uuid/schemas/org.gnome.shell.extensions.$name.gschema.xml"
    schema_dest="$HOME/.local/share/glib-2.0/schemas/"
    mkdir -p $schema_dest
    cp $schema_file $schema_dest
}