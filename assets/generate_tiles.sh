#!/bin/bash

# coreos color images

for x in 004.png 092.png 021.png 131.png 068.png 000.png 020.png 234.png 136.png  ; do cp -n coreos-color_0.png ${x}; done

# tectonic color

for x in 127.png 246.png 175.png 112.png 029.png 232.png 097.png 211.png 119.png  ; do cp -n tectonic-color_0.png ${x}; done

# coreos greyscale images
for x in 072.png 251.png 184.png 082.png 066.png 154.png 217.png ; do cp -n coreos-grey_0.png ${x}; done
for x in 086.png 216.png 093.png 023.png 134.png 200.png  ; do cp -n coreos-grey_270.png ${x}; done
for x in 167.png 146.png 195.png  ; do cp -n coreos-grey_all_0.png ${x}; done
for x in 035.png 013.png 008.png 070.png 002.png  ; do cp -n coreos-grey_all_180.png ${x}; done
for x in 118.png 104.png 059.png 191.png 222.png 198.png 061.png 039.png 176.png 123.png  ; do cp -n coreos-grey_all_90.png ${x}; done

# tectonic greyscale images

for x in 062.png 191.png 050.png 028.png 072.png 184.png 051.png ; do cp -n tectonic-grey_0.png ${x}; done
for x in 224.png 002.png 243.png 211.png 167.png 111.png 071.png ; do cp -n tectonic-grey_270.png ${x}; done

# quay images
for x in 110.png 046.png 120.png 124.png 157.png 036.png 000.png 181.png 223.png 148.png 045.png  ; do cp -n quay_grey_0.png ${x}; done
for x in 065.png 010.png 033.png 001.png 155.png 063.png 118.png  ; do cp -n quay_grey_180.png ${x}; done

# etcd images
for x in 212.png 240.png 041.png 115.png 190.png 137.png 074.png 147.png 116.png 023.png 140.png 153.png 215.png 170.png  ; do cp -n etcd-color_0.png ${x}; done
for x in 224.png 116.png 199.png 109.png 014.png 187.png 086.png 216.png  ; do cp -n etcd_grey_0.png ${x}; done
for x in 035.png 013.png 008.png 070.png  ; do cp -n etcd_grey_90.png ${x}; done

# rkt images
for x in 147.png 180.png 000.png 011.png 131.png 038.png  ; do cp -n rkt-color_0.png ${x}; done
for x in 217.png 119.png 007.png 178.png 004.png 226.png 012.png 092.png 157.png 033.png 015.png 165.png 181.png  ; do cp -n rkt-grey_0.png ${x}; done
for x in  174.png 098.png 205.png 055.png 147.png 102.png 100.png 215.png  ; do cp -n rkt-grey_180.png ${x}; done

# insert blank boxes
for x in `seq 0 255`; do num=$(printf %03d ${x});  if [ ! -e ${num}.png ]; then cp -n blank.png ${num}.png ; fi ; done

montage ???.png  -geometry '60x60+2+2>' -tile 16x16 -background black ../tiles.png 

rm ???.png
