make
mkdir -p pkg/cald-$1

echo "sudo cp bin/cald /usr/bin/ \nsudo cp bin/caldhelper /usr/bin/ \nmkdir -p ~/.config/cald \nif [ ! -f ~/.config/cald/cal.json ] \nthen \n\techo "[]" > ~/.config/cald/cal.json \nfi" > pkg/cald-$1/install.sh
chmod +x pkg/cald-$1/install.sh
echo "sudo rm -rf /usr/bin/cald /usr/bin/helper \necho 'Remove ~/.config/cald to delete the configuration.'" > pkg/cald-$1/uninstall.sh
chmod +x pkg/cald-$1/uninstall.sh

mkdir pkg/cald-$1/bin

cp build/cald pkg/cald-$1/bin/
cp caldhelper pkg/cald-$1/bin/

tar -cvzf pkg/cald-$1.tar.gz pkg/cald-$1

#rm -rf pkg/cald-$1