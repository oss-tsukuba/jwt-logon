PREFIX=/usr
BINDIR=$(PREFIX)/bin

install:
	mkdir -p $(DESTDIR)$(BINDIR)
	install -m 0755 jwt-logon $(DESTDIR)$(BINDIR)/jwt-logon
	install -m 0755 jwt-change-passphrase $(DESTDIR)$(BINDIR)/jwt-change-passphrase
