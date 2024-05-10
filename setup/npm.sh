mkdir $HOME/.npm-global
npm config set prefix "$HOME/.npm-global"
export PATH=$HOME/.npm-global/bin:$PATH
npm install --global git-open
npm install --global @marp-team/marp-cli
npm install --global fkill-cli
npm install --global @captainsafia/legit
