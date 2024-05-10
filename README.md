# Installation

## Partition

Ref.: [Speedy Install: EndeavourOS 2021.04.17 ArchLinux with BTRFS, TimeShift, Gnome 40, ZRAM, and PipeWire ](https://www.youtube.com/watch?v=o7JizzJ6SJ0)

1. boot:
   - file system: fat32
   - mount point: /boot/efi
   - size: 300MB
2. swap (optional):
   - file system: linuxswap
   - no mount point
   - size: 8GB (some figure close to your memory)
   - flag: swap
3. root:

   - file system: btrfs
   - mount point: /
   - size: the remaining disk size
   - flag: root

## Desktop Enviroment

GNOME/Hyprland.

## Note

Install EndeavourOS with GNOME desktop, then run the installation script.

# My neofetch

Current setup

```
                     ./o.                  hank@EndeavourOS
                   ./sssso-                ----------------
                 `:osssssss+-              OS: EndeavourOS Linux x86_64
               `:+sssssssssso/.            Host: HP Pavilion Plus Laptop 14-eh1xxx
             `-/ossssssssssssso/.          Kernel: 6.8.9-arch1-2
           `-/+sssssssssssssssso+:`        Uptime: 19 mins
         `-:/+sssssssssssssssssso+/.       Packages: 1254 (pacman)
       `.://osssssssssssssssssssso++-      Shell: zsh 5.9
      .://+ssssssssssssssssssssssso++:     Resolution: 2880x1800
    .:///ossssssssssssssssssssssssso++:    DE: Hyprland
  `:////ssssssssssssssssssssssssssso+++.   Theme: Yaru [GTK2/3]
`-////+ssssssssssssssssssssssssssso++++-   Icons: Yaru [GTK2/3]
 `..-+oosssssssssssssssssssssssso+++++/`   Terminal: alacritty
   ./++++++++++++++++++++++++++++++/:.     CPU: 13th Gen Intel i5-13500H (16) @ 4.700GHz
  `:::::::::::::::::::::::::------``       GPU: Intel Raptor Lake-P [Iris Xe Graphics]
                                           Memory: 3726MiB / 15707MiB

```

fresh install

```
                     ./o.                  hank@EndeavourOS
                   ./sssso-                ----------------
                 `:osssssss+-              OS: EndeavourOS Linux x86_64
               `:+sssssssssso/.            Host: HP Pavilion Plus Laptop 14-eh1
             `-/ossssssssssssso/.          Kernel: 6.8.9-arch1-2
           `-/+sssssssssssssssso+:`        Uptime: 23 mins
         `-:/+sssssssssssssssssso+/.       Packages: 849 (pacman)
       `.://osssssssssssssssssssso++-      Shell: bash 5.2.26
      .://+ssssssssssssssssssssssso++:     Resolution: 2880x1800
    .:///ossssssssssssssssssssssssso++:    DE: GNOME 46.1
  `:////ssssssssssssssssssssssssssso+++.   WM: Mutter
`-////+ssssssssssssssssssssssssssso++++-   WM Theme: Adwaita
 `..-+oosssssssssssssssssssssssso+++++/`   Theme: Adwaita [GTK2/3]
   ./++++++++++++++++++++++++++++++/:.     Icons: Qogir [GTK2/3]
  `:::::::::::::::::::::::::------``       Terminal: kgx
                                           CPU: 13th Gen Intel i5-13500H (16) @
                                           GPU: Intel Raptor Lake-P [Iris Xe Gr
                                           Memory: 2507MiB / 15707MiB

```

In memory of my old Acer Laptop

```
╭─░▒▓ hank@endeavour: ~
╰─ neofetch
                     ./o.                  hank@endeavour
                   ./sssso-                --------------
                 `:osssssss+-              OS: EndeavourOS Linux x86_64
               `:+sssssssssso/.            Host: Swift SF314-57G V1.21
             `-/ossssssssssssso/.          Kernel: 6.6.7-arch1-1
           `-/+sssssssssssssssso+:`        Uptime: 25 mins
         `-:/+sssssssssssssssssso+/.       Packages: 1111 (pacman)
       `.://osssssssssssssssssssso++-      Shell: zsh 5.9
      .://+ssssssssssssssssssssssso++:     Resolution: 1920x1080
    .:///ossssssssssssssssssssssssso++:    DE: GNOME 45.2
  `:////ssssssssssssssssssssssssssso+++.   WM: Mutter
`-////+ssssssssssssssssssssssssssso++++-   WM Theme: Marble-gray-dark
 `..-+oosssssssssssssssssssssssso+++++/`   Theme: Adwaita [GTK2/3]
   ./++++++++++++++++++++++++++++++/:.     Icons: Papirus [GTK2/3]
  `:::::::::::::::::::::::::------``       Terminal: gnome-terminal
                                           CPU: Intel i5-1035G1 (8) @ 3.600GHz
                                           GPU: NVIDIA GeForce MX250
                                           GPU: Intel Iris Plus Graphics G1
                                           Memory: 3217MiB / 7624MiB

```
