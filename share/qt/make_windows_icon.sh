#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/corgicoin.ico

convert ../../src/qt/res/icons/corgicoin-16.png ../../src/qt/res/icons/corgicoin-32.png ../../src/qt/res/icons/corgicoin-48.png ${ICON_DST}
