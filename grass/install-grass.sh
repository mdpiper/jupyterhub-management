#!/bin/bash

GRASS_DIR=grass-src
PREFIX=/usr/local

if [ ! -d $GRASS_DIR ]; then
    git clone --depth 1 --branch 8.3.1 https://github.com/OSGeo/grass.git $GRASS_DIR
fi

pushd $GRASS_DIR
./configure \
    --prefix=$PREFIX \
    --enable-largefile=yes \
    --with-nls \
    --with-cxx \
    --with-readline \
    --with-bzlib \
    --with-pthread \
    --with-proj-share=/usr/share/proj \
    --with-geos=/usr/bin/geos-config \
    --with-cairo \
    --with-opengl-libs=/usr/include/GL \
    --with-freetype=yes --with-freetype-includes="/usr/include/freetype2/" \
    --with-sqlite=yes \
    --without-pdal \
    --with-openmp
make
make install

popd

exit 0
