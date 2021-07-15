make
mkdir -p pkg/cald-$1

cd pkg

echo "sudo cp bin/cald /usr/bin/\nsudo cp bin/caldhelper /usr/bin/\nmkdir -p ~/.config/cald\nif [ ! -f ~/.config/cald/cal.json ]\nthen\n\techo "[]" > ~/.config/cald/cal.json\nfi" > cald-$1/install.sh
chmod +x cald-$1/install.sh
echo "sudo rm -rf /usr/bin/cald /usr/bin/helper \necho 'Remove ~/.config/cald to delete the configuration.'" > cald-$1/uninstall.sh
chmod +x cald-$1/uninstall.sh

mkdir cald-$1/bin

cp ../build/cald cald-$1/bin/
cp ../caldhelper cald-$1/bin/

tar -cvzf cald-$1.tar.gz cald-$1

rm -rf cald-$1

make -C .. clean
