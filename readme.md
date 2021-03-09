# Caldaemon
A simple Calender program that uses Unix timestamps for the events.

# Instructions

## From package
## Install
1. Download latest release from the releases page.
2. Unpack the file. (Using eg.: tar -xvf cald-release.tar.gz)
3. Go into the new directory and run `./install.sh`.

## Uninstall
1. If you don't still have the folder from installation, perform steps 1 and 2 from the install section.
2. Go into the directory and run `./uninstall.sh`.

## From source
### Install
* Install nim
* Run `make`
* Run `sudo make install`
* Set your WM/DE to autostart the program

### Uninstall
* Run sudo make uninstall
* Optional: Delete the config file in: ~/.config/cald

## Configuration
Use the provided **caldhelper**. Or:
* Add the events, to the ~/.config/cald/cal.json file, as dicts with a "title" key and a "time" key. (The time should be a unix timestamp).
