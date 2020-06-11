#!/bin/bash

process_done() {

    if [ $? -eq 0 ]
    then
        echo
        echo "Success"
        echo
    else
        echo
        echo "[ERROR] Process Failed!"
        echo
		
        read -p "The last command exited with an error. Exit script? (yes/no) " answer

        if [ "$answer" == "yes" ]
        then
            exit 1
        fi
    fi
}

greeting() {
    notify-send "Updating your system, $USER"
    echo
    echo "Updating your system, $USER."
    echo
}

update() {

    sudo apt-get update;
    process_done

    sudo apt-get upgrade -y;
    process_done

    sudo apt-get dist-upgrade -y;
    process_done

    echo "Updating snaps"
    which snap && sudo snap refresh || echo 'Snaps not found';
    process_done

    echo "Updating flatpak"
    flatpak --version && flatpak update -y || echo 'Flatpaks not found';
    process_done
}

cleaning() {

    sudo apt-get autoremove -y;
    process_done

    sudo apt-get autoclean -y;
    process_done

    # sudo updatedb;
    sudo rm -Rf /tmp/*
    process_done
}

leave() {

    echo
    echo "--------------------"
    echo "- Update Complete! -"
    echo "--------------------"
    echo
    exit
notify-send "System completly updated!"
}
greeting
update
cleaning
leave
