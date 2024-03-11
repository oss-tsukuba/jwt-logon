PREFIX=/usr
BINDIR=$(PREFIX)/bin

MAN1=jwt-logon.1
MAN2=jwt-change-passphrase.1

all: $(MAN1) $(MAN2)

install:
	mkdir -p $(DESTDIR)$(BINDIR)
	install -m 0755 jwt-logon $(DESTDIR)$(BINDIR)/jwt-logon
	install -m 0755 jwt-change-passphrase $(DESTDIR)$(BINDIR)/jwt-change-passphrase

jwt-logon.1: jwt-logon.1.md
	pandoc -s -t man $< -o $@

jwt-change-passphrase.1: jwt-change-passphrase.1.md
	pandoc -s -t man $< -o $@
