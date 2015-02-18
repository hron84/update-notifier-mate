SOURCES = bin/update_notifier_mate

PROJECT_NAME := update-notifier-mate

prefix = $(DESTDIR)/usr/local
bindir = $(prefix)/bin
docdir = $(prefix)/share/doc/$(PROJECT_NAME)


all: $(SOURCES)
	@echo "Everything is OK!"


install: install-bin install-doc

install-dirs:
	install -d -m 0755 $(bindir) $(docdir)

install-bin: all install-dirs 
	install -m 0755 -o root -g root bin/update_notifier_mate $(bindir)

install-doc: install-dirs
	install -m 0644 -o root -g root README.md $(docdir)
