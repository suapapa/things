#!/usr/bin/python3

import glob, os

for f in glob.glob('*/*.scad'):
    o = f.replace('.scad', '.stl')
    print('converting {input} to {output}...'.format(input=f, output=o))
    os.system('openscad -o {output} {input}'.format(input=f, output=o))

print('all done')
