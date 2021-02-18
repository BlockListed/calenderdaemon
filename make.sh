if [ $1 = install ]
then
    nim c caldaemon.nim
    cp caldaemon ~/.local/bin/
    cp helper ~/.local/bin/
fi

if [ $1 = uninstall ]
then
    rm ~/.local/bin/caldaemon
    rm ~/.local/bin/helper
    echo "Remove ~/.config/cald to delete all files from this program!"
fi