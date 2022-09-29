PREFIX=/usr
BINDIR=$(PREFIX)/bin

install:
	install -m 0755 jwt-logon $(BINDIR)/jwt-logon
	install -m 0755 jwt-change-passphrase $(BINDIR)/jwt-logon
