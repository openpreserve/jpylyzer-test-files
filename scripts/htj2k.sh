#!/bin/bash

# Creates High Throughput JPEG 2000 sample files
# Requires ImageMagick, OpenHTJ2K, OpenJH and Grok binaries

# Full path to Grok's grk_decompress and compress
grk_decompress=/home/linuxbrew/.linuxbrew/Cellar/grokj2k/11.0.0/bin/grk_decompress
grk_compress=/home/linuxbrew/.linuxbrew/Cellar/grokj2k/11.0.0/bin/grk_compress

# Full path to open_htj2k_enc
open_htj2k_enc=~/OpenHTJ2K/build/bin/open_htj2k_enc

# Full path to ojph_compress
ojph_compress=~/OpenJPH/bin/ojph_compress

# Create ppm from existing JP2
$grk_decompress -i reference.jp2 -o reference.ppm

# Create JPH, OpenHTJ2K
$open_htj2k_enc -i reference.ppm -o ohtj2k.jph Qfactor=30

# Create raw codestream, OpenHTJ2K
$open_htj2k_enc -i reference.ppm -o ohtj2k.j2c Qfactor=30

# Create raw codestream, OpenJPH
$ojph_compress -i reference.ppm -o ojph.j2c -qstep 0.1

# Downsample input image to reduce size of Grok output (Grok -r settings are
# ignored for HTJ2K, and oddly reduced PPM causes exception in OpenHTJ2K) 
mogrify -resize 500 reference.ppm

# Create raw codestream, Grok
$grk_compress -i reference.ppm -o grokhtj2k.j2c -I -M 64

# Clean up
#rm reference.ppm



