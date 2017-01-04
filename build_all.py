#!/usr/bin/python

import glob, os

for f in glob.glob("*/*.scad"):
    o = f.replace(".scad", ".stl")
    os.system("openscad -o %s %s"%(o, f))
