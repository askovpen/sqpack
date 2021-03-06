CC   = gcc
COPT = -O3 -I..
LOPT = -L../fidoconf -L../smapi
# LOPT = 

all : sqpack 

sqpack: sqpack.c
	$(CC) $(COPT) $(LOPT) sqpack.c -o sqpack -lfidoconfigbe -lsmapibe 

sqpack.1.gz : sqpack.1
	gzip -c sqpack.1 > sqpack.1.gz

clean: 
	-rm sqpack
	-rm sqpack.1.gz
	-rm *~

distclean: clean
