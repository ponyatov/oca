.PHONY : install update ref gz
install: $(WS)_install doc ref gz $(OPAM)
	$(MAKE) update
update : $(WS)_update
	opam install -y . --deps-only && dune build
	$(NPM) update
ref    : $(RF)
gz     : $(GZ)

Debian_install:
# sudo dpkg --add-architecture i386
Debian_update: apt.Debian
	sudo apt update
	sudo apt install -uy `cat $<` $(APT)
