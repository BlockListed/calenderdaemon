if [ $1 = install ]
then
    nim c caldaemon.nim
    cp caldaemon ~/.local/bin/
    cp helper ~/.local/bin/
    mkdir -p ~/.config/cald
    if [ -f ~/.config/cald/cal.json ]
    then
      echo "Config file already exists!"
    else
      echo "[]" >> ~/.config/cald/cal.json
    fi

elif [ $1 = uninstall ]
then
    rm ~/.local/bin/caldaemon
    rm ~/.local/bin/helper
    echo "Remove ~/.config/cald to delete all files from this program!"

else
    echo "Please use either install or uninstall as the argument!"
fi
