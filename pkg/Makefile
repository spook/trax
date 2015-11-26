#!/bin/make -f

install: 
ifeq ($(DESTDIR),)
	@echo 'Skipping call, DESTDIR does not yet exist'
else
	echo "Moving trax files into target structure"
	rsync -Cav etc usr var $(DESTDIR)
	chmod -R 755 $(DESTDIR)/etc/trax
	chmod 755 $(DESTDIR)/usr/bin/*
	chmod 755 $(DESTDIR)/usr/share/trax
	chmod 755 $(DESTDIR)/usr/share/perl5/trax
	chmod 644 $(DESTDIR)/usr/share/trax
	chmod 644 $(DESTDIR)/usr/share/perl5/trax
	chmod 755 $(DESTDIR)/var/log/trax
	chmod 755 $(DESTDIR)/var/run/trax
#	chown -R root.root $(DESTDIR)/usr/bin
#	chown -R root.root $(DESTDIR)/usr/share/trax
#	chown -R root.root $(DESTDIR)/usr/share/perl5
endif

