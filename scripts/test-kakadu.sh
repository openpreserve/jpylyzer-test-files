#!/bin/bash
# Location of Kakadu binaries
kduPath=/Applications/kakadu

# Add Kakadu path to LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$kduPath

# Full path to Kakadu's kdu_compress
kdu_compress=$kduPath/kdu_compress

# Full path to Grok's grk_decompress and compress
grk_decompress=/home/linuxbrew/.linuxbrew/Cellar/grokj2k/11.0.0/bin/grk_decompress
grk_compress=/home/linuxbrew/.linuxbrew/Cellar/grokj2k/11.0.0/bin/grk_compress

# Create ppm from existing JP2
$grk_decompress -i reference.jp2 -o reference.ppm

$kdu_compress > usage.txt

# Create JPH, Kakadu
$kdu_compress -i reference.ppm -o kdu-ht.jph -rate 1 Cmodes=HT 

# Create raw codestream, Kakadu
$kdu_compress -i reference.ppm -o kdu-ht.j2c -rate 1 Cmodes=HT

# Extension test
$kdu_compress -i reference.ppm -o kdu-ht.jhc -rate 1 Cmodes=HT

# JPH with CPF marker in codestream
$kdu_compress -i reference.ppm -o kdu-ht-cpf.jph Cmodes=HT -rate 1 Scpf_num={10}

# JPH with PRF marker in codestream
$kdu_compress -i reference.ppm -o kdu-ht-prf.jph Cmodes=HT -rate 1 Sprf_num={10}


