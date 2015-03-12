# Generic make file for DisPare.  Based on generic Chare Kernel makefile.
#
#CKEXEC is the pathname of the directory where the binaries are located
CKEXEC=/home/kale/PALP/distribute/bin
#CKINCL is the pathname of the directory where the headers are located
CKINCL=/home/kale/PALP/distribute/include

CFLAGS=-c -O -I. -I$(CKEXEC) -I$(CKINCL)

CKOBJ=$(CKEXEC)/ck_objdir/ckobj.o
MEMSTRAT=$(CKEXEC)/mem_objdir/mem_sa.o
QUEUESTRAT=$(CKEXEC)/qs_objdir/qs_kmultiqueuebest.o

PGM =

all:  $(PGM)

$(PGM): $(PGM).o $(CKOBJ) $(MEMSTRAT) $(QUEUESTRAT)
	cc /lib/privatedata.o -AE /lib/crt0.o  $(CKOBJ) $(MEMSTRAT) $(QUEUESTRAT) $(PGM).o -o $(PGM) -lept -lc

$(PGM).o: $(PGM).c $(CKINCL)/chare.h
	cc $(CFLAGS)  $(PGM).c 

$(PGM).c: $(PGM).p
	$(CKEXEC)/ckshared $(PGM).p	

clean: 
	rm -f *_Event.p *_Msgs.p *_State.p Main.p $(PGM).o $(PGM).c $(PGM)_defs.h
