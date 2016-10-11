
# Author:  Toan Pham, Atronix Engineering Inc.
# Comment: Compile everything here to a static library (libjson.a)
########################################################################



mkconfig_SOURCES:=$(shell find . -maxdepth 1 -iname "*.c")
mkconfig_OBJECTS=$(subst .c,.o,$(mkconfig_SOURCES));

APP=bin/mkconfig 

VPATH=include

INSTALL=install 

.PHONY: all



all: $(APP) bin/kconfig-mconf


COMMON_CFLAGS=-Iinclude -std=gnu++11 -lstdc++


bin/kconfig-mconf:
	$(MAKE) -C tools/kconfig-frontends $(MAKEFLAGS)
	mkdir -p bin
	$(INSTALL) tools/kconfig-frontends/frontends/mconf/kconfig-mconf bin/kconfig-mconf


$(APP): $(mkconfig_OBJECTS)
	echo $(mkconfig_OBJECTS)
	$(CC) -o $@ $^
	

%.o: %.cpp	
	$(CC) $(COMMON_CFLAGS) -c -o $@ $<
	
clean:
	-rm *.o $(APP) bin/kconfig-mconf
	$(MAKE) -C tools/kconfig-frontends clean
	
