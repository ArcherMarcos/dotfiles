#!/bin/bash

declare -r DOT_CONFIG=~/.config
declare -r NVIM_CONFIGURATION_LOCATION=$DOT_CONF/nvim
declare -r KITTY_CONFIGURATION_LOCATION=$DOT_CONF/kitty
declare -r TMUX_CONFIGURATION_LOCATION=$HOME/.tmux.conf
declare -r DOT_FILES=~/dotfiles

executa_backup(){
    local arquivo=$1
    local destino_bkp=$2
    if [ -s $arquivo ]; then
        echo "Diretorio $arquivo já existe"
        echo "BackUp sendo executado"
        mv $arquivo $destino_bkp
    fi
}
executa_backup $NVIM_CONFIGURATION_LOCATION ~/nvim_bkp
ln -s $DOT_FILES/nvim $NVIM_CONFIGURATION_LOCATION

executa_backup $KITTY_CONFIGURATION_LOCATION ~/kitty_bkp
ln -s $DOT_FILES/kitty $KITTY_CONFIGURATION_LOCATION

executa_backup $TMUX_CONFIGURATION_LOCATION ~/tmux_bkp
ln -s $DOT_FILES/tmux.conf $TMUX_CONFIGURATION_LOCATION

