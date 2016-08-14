CFLAGS += -Wall -pedantic -std=gnu99 -O3
CFLAGS += -DNDEBUG
LFLAGS = -lpthread

CC ?= gcc

ifneq ($(STATIC),)
	CFLAGS += -static
endif

.PHONY: all clean

all: picomdnsd

clean:
	$(RM) picomdnsd


picomdnsd: picomdnsd.c mdns.c mdnsd.c
	$(CC) -o $@ $(CFLAGS) $^ $(LFLAGS)
