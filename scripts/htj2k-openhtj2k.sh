#!/bin/bash

# Creates High Throughput JPEG 2000 sample files
# Requires OpenHTJ2K and Grok binaries

# Full path to Grok's grk_decompress
grk_decompress=/home/linuxbrew/.linuxbrew/Cellar/grokj2k/11.0.0/bin/grk_decompress

# Full path to open_htj2k_enc
open_htj2k_enc=~/OpenHTJ2K/build/bin/open_htj2k_enc

# Create ppm from existing JP2
$grk_decompress -i reference.jp2 -o reference.ppm

# Create JPH
$open_htj2k_enc -i reference.ppm -o ohtj2k.jph Qfactor=30

# Create raw codestream
$open_htj2k_enc -i reference.ppm -o ohtj2k.j2c Qfactor=30

# Clean up
rm reference.ppm



