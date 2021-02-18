# Caldaemon
A simple Calender program that uses Unix timestamps for the events.

# Instructions

## Install
* Install nim
* Modify caldaemon.nim and change the paths to be your user
* Run ./make.sh install
* Set your WM/DE to autostart the program

## Uninstall
* Run ./make.sh uninstall

## Configuration
Make a cal.json file in ~/.config/cald/.
In there make a Json list object (like this [])
Add the events as dicts with a "title" key and a "time" key. (The time should be a unix timestamp)