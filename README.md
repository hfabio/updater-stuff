# Updater stuff

- System update
  - apt update and apt upgrade
  - dist-upgrade
  - update snaps
  - update flatpaks
  - apt autoremove
  - apt autoclean
  - clean the /temp/ folder
- Update vscode
  - Download the newest vscode .deb file in /temp/ folder, update it and open afterall

## How to install
# All

## **Unique step**
Download the `install.sh` script
```
  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/install.sh
```
Give permission
```
  sudo chmod +x install.sh
```
run as SU (or you can use as user but remembering to insert your SUDO password when asked for)

```
  sudo /install.sh
```

# Separated

## **First step**

create a folder for your scripts (you can put directly in your system path but I don't recommend)
```
  mkdir ~/update-scripts
```

## **then download the scripts**

```
  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/update-system.sh -O ~/update-scripts/update-system.sh

  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/update-vscode.sh -O ~/update-scripts/update-vscode.sh

  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/update-skype.sh -O ~/update-scripts/update-skype.sh

  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/update-insomnia.sh -O ~/update-scripts/update-insomnia.sh

  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/update-discord.sh -O ~/update-scripts/update-discord.sh

  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/update-edge.sh -O ~/update-scripts/update-edge.sh
```
*note: if you created a different path or using directly for your system path pay attention to the output*

## **Now give the permissions for execution**
```
  sudo chmod +x ~/update-scripts/*.sh
```
*note: you can use 775 permission as well, your choice*

## And then let's create the symbolic link for your path system
```
  sudo ln -s ~/update-scripts/update-system.sh /usr/bin/update-system
  sudo ln -s ~/update-scripts/update-vscode.sh /usr/bin/update-vscode
  sudo ln -s ~/update-scripts/update-skype.sh /usr/bin/update-skype
  sudo ln -s ~/update-scripts/update-insomnia.sh /usr/bin/update-insomnia
  sudo ln -s ~/update-scripts/update-discord.sh /usr/bin/update-discord
  sudo ln -s ~/update-scripts/update-edge.sh /usr/bin/update-edge
```

## How to use

Just open the terminal and type `update-system` or `update-vscode` or `update-skype` or `update-insomnia` or `update-discord` or `update-edge`, simple like that.

*note: If you're using SUDO or root when you update your vscode it will not open after update because the vscode don't allow to use vscode as root*

## How to uninstall

# Download the uninstaller

Download the `uninstall.sh` script
```
  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/uninstall.sh
```
Give permission
```
  sudo chmod +x uninstall.sh
```
run as SU (or you can use as user but remembering to insert your SUDO password when asked for)

```
  sudo /uninstall.sh
```
