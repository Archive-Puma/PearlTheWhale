#! /bin/bash
echo -e '[*] Copying .dockerfunc to \$HOME'
cp .dockerfunc $HOME
echo '[*] Activating .dockerfunc'
source $HOME/.dockerfunc
echo '[*] Editting .bashrc script'
echo '' >> $HOME/.bashrc
echo '#Initializate PearlTheWhale Docker Alias' >> $HOME/.bashrc
echo 'source ~/.dockerfunc' >> $HOME/.bashrc
echo '[*] Script done!'
echo '[*] Logging out...'
pkill -u $USER
