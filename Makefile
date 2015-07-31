# Copyright (c) 2015, Louis P. Santillan <lpsantil@gmail.com>
# All rights reserved.
# See LICENSE for licensing details.

DESTDIR ?= /usr/local

######################################################################

EDIR = bin
EXE = re2js

######################################################################
######################## DO NOT MODIFY BELOW #########################
######################################################################

.PHONY: all help install uninstall showconfig gstat gpush
.PHONY: tarball

all:
	make help

help:
	@echo "Try:"
	@echo "\tmake install"
	@echo "\tmake uninstall"
	@echo "\tmake showconfig"

install: $(EDIR)/$(EXE)
	mkdir -p $(DESTDIR)/bin
	rm -f .footprint
	echo $(DESTDIR)/$(EXE) >> .footprint
	cp -v --parents $(EDIR)/$(EXE) $(DESTDIR)
	chmod 755 $(DESTDIR)/$(EDIR)/$(EXE)

uninstall: .footprint
	@for T in `cat .footprint`; do rm -v $$T; done

showconfig:
	@echo "DESTDIR="$(DESTDIR)
	@echo "EDIR="$(EDIR)
	@echo "EXE="$(EXE)

gstat:
	git status

gpush:
	git commit
	git push

tarball:
	cd ../. && tar jcvf re2js.$(shell date +%Y%m%d%H%M%S).tar.bz2 NewProj/
