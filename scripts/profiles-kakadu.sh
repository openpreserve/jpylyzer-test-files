#!/bin/bash

# Creates codestreams using different profiles.
# Requires Kakadu binaries

# Location of Kakadu binaries
kduPath=/Applications/kakadu

# Add Kakadu path to LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$kduPath

# Create TIFF from existing JP2
/Applications/kakadu/kdu_expand -i aware.jp2 -o aware.tif
# Convert to 12-bit TIF with height 1080 (this satisfies all profile restrictions
convert -depth 12 -resize x1080 aware.tif aware.tif
# Create codestreams
/Applications/kakadu/kdu_compress -i aware.tif -o profile-0.j2c Creversible=no -rate 0.1 Sprofile=PROFILE0
/Applications/kakadu/kdu_compress -i aware.tif -o profile-1.j2c Creversible=no -rate 0.1 Sprofile=PROFILE1
/Applications/kakadu/kdu_compress -i aware.tif -o profile-2.j2c Creversible=no -rate 0.1 Sprofile=PROFILE2
/Applications/kakadu/kdu_compress -i aware.tif -o profile-part2.j2c Creversible=no -rate 0.1 Sprofile=PART2
/Applications/kakadu/kdu_compress -i aware.tif -o profile-cinema2k.j2c Creversible=no -rate 0.1 Cblk="{32,32}" Sprofile=CINEMA2K
/Applications/kakadu/kdu_compress -i aware.tif -o profile-cinema4k.j2c Creversible=no -rate 0.1 Cblk="{32,32}" Sprofile=CINEMA4K
/Applications/kakadu/kdu_compress -i aware.tif -o profile-broadcast.j2c Creversible=no -rate 0.1 Cblk="{32,32}" Sprofile=BROADCAST
/Applications/kakadu/kdu_compress -i aware.tif -o profile-cinema2s.j2c Creversible=no -rate 0.1 Cblk="{32,32}" Sprofile=CINEMA2S
/Applications/kakadu/kdu_compress -i aware.tif -o profile-cinema4s.j2c Creversible=no -rate 0.1 Cblk="{32,32}" Sprofile=CINEMA4S
/Applications/kakadu/kdu_compress -i aware.tif -o profile-cinemass.j2c Creversible=no -rate 0.1 Cblk="{32,32}" Sprofile=CINEMASS
/Applications/kakadu/kdu_compress -i aware.tif -o profile-imf.j2c Creversible=no -rate 0.1 Cblk="{32,32}" Sprofile=IMF
# Clean up
rm aware.tif
