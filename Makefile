.PHONY: all compare

all: s-kids.gbc compare

s-kids.gbc:
	rgbasm -o s-kids.o s-kids.gb.s
	rgblink -o s-kids.gbc s-kids.o
	rgbfix -csjv -k A4 -l 0x33 -m 0x1B -n 0 -p 0xFF -r 3 -t SURVIVALKID -i AVKE $@

compare: baserom.gbc s-kids.gbc
	sha1sum -c rom.sha1

clean:
	rm -f *.o s-kids.gbc

diff:
	bcompare baserom.gbc s-kids.gbc
