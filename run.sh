#!/bin/bash
wget http://data.csail.mit.edu/im2recipe/recipe1M_layers.tar.gz
wget http://data.csail.mit.edu/im2recipe/det_ingrs.json
tar xzf recipe1M_layers.tar.gz
rm -rf recipe1M_layers.tar.gz
mkdir src/prep-scripts/in
mv layer1.json src/prep-scripts/in
mv det_ingrs.json src/prep-scripts/in
cd src/prep-scripts
make
make copy
cd ../recipe-handler
make
make copy
cd ../verify
make
