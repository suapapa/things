#!/usr/bin/python3

import glob, os

for f in glob.glob('*/*.scad'):
    o = f.replace('.scad', '.stl')
    print('converting {input} to {output}...'.format(input=f, output=o))
    cmd = 'docker run --rm -v "{cwd}":/openscad -w /openscad -u {uid}:{gid} openscad/openscad:latest openscad -o "{output}" "{input}"'.format(
        cwd=os.getcwd(),
        uid=os.getuid(),
        gid=os.getgid(),
        input=f,
        output=o
    )
    os.system(cmd)

print('all done')
