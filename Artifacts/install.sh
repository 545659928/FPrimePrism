#!/bin/bash -e

source .config

setup_fprime_layout() {
    cd $FPRIME_LAYOUT_PATH

    ./install

    cd ../
}

setup_fprime_visual() {
    cd $FPRIME_VISUAL_PATH

    npm audit fix
    npm install
    sudo npm install -g nodemon
    echo DATA_FOLDER="$DEFAULT_DOWNLOAD_PATH" >.fpv-env

    cd ../
}

setup_submodule() {
    setup_fprime_layout
    setup_fprime_visual
}

sudo true # get pw
git submodule init && git submodule update
setup_submodule
yarn install
