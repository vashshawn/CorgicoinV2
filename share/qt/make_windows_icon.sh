#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/VADE.ico

convert ../../src/qt/res/icons/VADE-16.png ../../src/qt/res/icons/VADE-32.png ../../src/qt/res/icons/VADE-48.png ${ICON_DST}
