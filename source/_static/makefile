default: all

%.png: %.svg
        inkscape -f $< --export-dpi=250 --export-png=$@

all: greenlight.png

.PHONY: all default
