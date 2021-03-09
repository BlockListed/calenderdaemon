CC=nim

all: cald

cald: caldaemon.nim
	$(CC) c -o:build/cald caldaemon.nim

install:
	cp build/cald ~/.local/bin/
	cp helper ~/.local/bin/
	mkdir -p ~/.config/cald
	if [ ! -f ~/.config/cald/cal.json ]; \
	then \
		echo "[]" > ~/.config/cald/cal.json; \
	fi

uninstall:
	rm -rf ~/.local/bin/cald ~/.local/bin/helper
