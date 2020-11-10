DESTDIR ?=
CFLAGS ?=
LDFLAGS ?=
prefix ?= /usr

all: hello_world

hello_world: hello_world.o
	$(CC) hello_world.o $(LDFLAGS) -o hello_world

hello_world.o:
	$(CC) $(CFLAGS) -c hello_world.c

install: all
	install -m 0755 -d $(DESTDIR)/$(prefix)/bin/
	install -m 0755 hello_world $(DESTDIR)/$(prefix)/bin/
