#!/bin/bash

install_receiver (){
    echo "installing with receiver profile"
    apt install -y libjpeg-dev
}

install_sender(){
    echo "installing with sender profile"
    apt install -y pigpiod
    apt install -y imagemagick
    apt install -y libjpeg-dev

    # if [ command -v pigpiod > /dev/null 2>&1 ]; then
    #     # apt install pigpiod
    # fi
}

case $1 in
    sender)
        install_sender
        ;;
    receiver)
        install_receiver
        ;;
    *)
        echo "option not recognized!"
        ;;
esac
