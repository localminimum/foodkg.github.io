#!/bin/bash
wget $RECIPE_LINK
wget $INGRES_LINK
tar xzf recipe1M_layers.tar.gz
rm -rf recipe1M_layers.tar.gz
mkdir src/prep-scripts/in
mv layer1.json src/prep-scripts/in
mv det_ingrs.json src/prep-scripts/in
cd src/prep-scripts
make
make copy
cd ../recipe-handler
make mini
make copy_mini
cp -r out /food-kg-data
cd ../verify
make
