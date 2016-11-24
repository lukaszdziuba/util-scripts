EXTENSION=png
HEIGHT=100

for f in *.$EXTENSION; do
  f_output=output/$f
  # trim white margins
  convert $f -fuzz 10% -bordercolor white -trim +repage $f_output
  # convert white to transparent
  convert $f_output -transparent white $f_output
  # scale to height max (any dimension)
  convert $f_output -resize x100 $f_output
done
