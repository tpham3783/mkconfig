
# Author:  Toan Pham, Atronix Engineering Inc.
# Comment: Compile everything here to a static library (libjson.a)
########################################################################



mkconfig_SOURCES:=$(shell find . -maxdepth 1 -iname "*.c")
mkconfig_OBJECTS=$(subst .c,.o,$(dmi_SOURCES));

APP=mkconfig

VPATH=include


.PHONY: all



all: $(APP)


COMMON_CFLAGS=-Iinclude -std=gnu++11 -lstdc++

$(APP): $(dmi_OBJECTS)
	$(AR) $(ARFLAGS) $@ $(mkconfig_OBJECTS)
	

%.o: %.cpp	
	$(CC) $(COMMON_CFLAGS) -c -o $@ $<
	
clean:
	-rm *.o $(APP)