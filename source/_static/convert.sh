colors="green yellowgreen red"
for color in $colors; do
    prefix=$color"light"
    inkscape -f $prefix.svg --export-dpi=100 --export-png=$prefix.png
done
