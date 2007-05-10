#*****************************************************************************
#* 
#*  @file          Makefile
#*
#*                 Weiss-Embedded-Linux
#*
#*  @par Program:  User mode utilities
#*
#*  @version       1.0 (\$Revision: 332 $)
#*  @author        Guido Classen
#*                 Weiss Electronic GmbH
#* 
#*  $LastChangedBy: clg9tr $  
#*  $Date: 2006-11-24 18:21:01 +0100 (Fr, 24 Nov 2006) $
#*  $URL: svn://server-i/layer-79/makefile $
#*
#*  @par Modification History:
#*   2007-02-05 gc: initial version
#*
#*  @par Makefile calls:
#*
#*  Build: 
#*   make 
#*
#*****************************************************************************

BASE_DIR = $(CURDIR)/..
include	$(BASE_DIR)/directories.mk

CFLAGS		+=  -I$(KERNEL_PATH)/include

PROGRAMS = ccm2200_gpio_test ccm2200_watchdog ccm2200_serial forward ro rw

.PHONY: all
all: $(PROGRAMS) install


.PHONY: install
install:
	chmod 4770 ro
	chmod 4770 rw
	cp -a $(PROGRAMS) $(BUILDROOT_PATH)/ch_conf/usr/bin


#simple pattern rule to compile executables from just one source file!
%:	%.c
	$(CROSS_CC) -o$@ $(CFLAGS) $<
	$(CROSS_STRIP) $@


.PHONY: clean
clean:
	-rm *.o
	-rm $(PROGRAMS)

# Local Variables:
# mode: makefile
# compile-command: "make"
# End:
