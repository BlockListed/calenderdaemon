CC=nim

all: cald

cald: caldaemon.nim
	$(CC) c -o:build/cald caldaemon.nim

install: caldhelper build/cald
	killall cald
	cp build/cald /usr/bin/
	cp caldhelper /usr/bin/
	mkdir -p ~/.config/cald
	if [ ! -f ~/.config/cald/cal.json ]; \
	then \
		echo "[]" > ~/.config/cald/cal.json; \
	fi

uninstall:
	rm -rf /usr/bin/cald /usr/bin/helper

clean:
	rm -rf build/*
