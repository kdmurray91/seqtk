CC=gcc
CFLAGS=-g -Wall -O2
PREFIX=/usr/local

seqtk:seqtk.c khash.h kseq.h
		$(CC) $(CFLAGS) seqtk.c -o $@ -lz -lm

clean:
		rm -fr gmon.out *.o ext/*.o a.out seqtk *~ *.a *.dSYM session*

install:
		mkdir -p $(PREFIX)/bin || true
		mv seqtk $(PREFIX)/bin/
