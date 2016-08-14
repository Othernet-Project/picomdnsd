CFLAGS += -Wall -pedantic -std=gnu99 -O3
LFLAGS = -lpthread

ifneq ($(CROSS_COMPILE),)
  CC = gcc
  CC := $(CROSS_COMPILE)$(CC)
endif

ifneq ($(STATIC),)
	CFLAGS += -static
endif

.PHONY: picomdnsd all

all: picomdnsd

clean:
	$(RM) picomdnsd


picomdnsd: picomdnsd.c mdns.c mdnsd.c
	$(CC) -o $@ $(CFLAGS) $^ $(LFLAGS)

