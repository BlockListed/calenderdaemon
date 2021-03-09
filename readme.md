# Caldaemon
A simple Calender program that uses Unix timestamps for the events.

# Instructions

## Install
* Install nim
* Run `make`
* Run `sudo make install`
* Set your WM/DE to autostart the program

## Uninstall
* Run sudo make uninstall
* Optional: Delete the config file in: ~/.config/cald

## Configuration
Use the provided **caldhelper**. Or:
* Add the events as dicts with a "title" key and a "time" key. (The time should be a unix timestamp).
