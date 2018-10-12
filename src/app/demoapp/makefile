
CC=g++
CP=cp
RM=rm
CFLAGS=-g --std=c++11
OUTPUT=demoapp
OUTDIR=../../out

SOURCES=$(wildcard *.cpp)

all: $(OUTPUT)

$(OUTPUT):
	$(CC) $(CFLAGS) $(SOURCES) -o $@
	$(CP) $(OUTPUT) $(OUTDIR)/$(OUTPUT)
	$(RM) $(OUTPUT)	
