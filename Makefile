.PHONY: all compare

all: skids.gbc compare

skids.gbc:
	rgbasm -o skids.o skids.gb.s
	rgblink -o skids.gbc skids.o
	rgbfix -csjv -k A4 -l 0x33 -m 0x1B -n 0 -p 0xFF -r 3 -t SURVIVALKID -i AVKE $@

compare: baserom.gbc skids.gbc
	sha1sum -c rom.sha1

clean:
	rm -f *.o skids.gbc

diff:
	bcompare baserom.gbc skids.gbc
