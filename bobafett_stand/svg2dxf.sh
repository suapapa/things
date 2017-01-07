#!/bin/bash

inkscape -E intermediate.eps quate.svg
pstoedit -dt -f dxf:-polyaslines\ -mm intermediate.eps quate.dxf
rm intermediate.eps
