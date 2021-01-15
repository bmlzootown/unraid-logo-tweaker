#!/bin/bash

cd ../

# Create temporary directory and copy over the usr and boot folders
mkdir tmp/
cp -R source/usr tmp/

# Package up the temp directory
cd tmp/
tar -cvf ../archives/unraid-logo-tweaker-$(date +"%Y.%-m.%-d").tar .
xz -c -z ../archives/unraid-logo-tweaker-$(date +"%Y.%-m.%-d").tar > ../archives/unraid-logo-tweaker-$(date +"%Y.%-m.%-d").txz
#tar -c -J -f $(dirname "$PWD")/archives/unraid-logo-tweaker-$(date +"%Y.%-m.%-d").txz -C $PWD/tmp *

# Remove the temp directory
cd ../
rm -rf tmp/
rm archives/unraid-logo-tweaker-$(date +"%Y.%-m.%-d").tar

# Spit out the package MD5
md5sum archives/unraid-logo-tweaker-$(date +"%Y.%-m.%-d").txz
