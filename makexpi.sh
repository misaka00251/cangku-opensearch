#!/bin/bash
# Note: Version needs to be changed here to set it in pacakage.json, and in install.rdf for a release build. The .ignore file contains which files will not be added to xpi.
VERSION="4.0"
if [ ! -d "$DIRECTORY" ]; then
	mkdir dist
fi
cd dist
7z a -tzip -mx9 -mm=Deflate -mfb=258 -mmt=8 -mpass=15 -mtc=on "cangku_opensearch-$VERSION-fx.xpi" ../* -x@../.ignore
cd ..
echo "Generated "cangku_opensearch-$VERSION-fx.xpi" placed in dist/"
sha512sum dist/*
echo "Done!"
