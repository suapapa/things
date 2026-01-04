#!/usr/bin/python3

import os
import sys
import multiprocessing

try:
    cpus = multiprocessing.cpu_count()
except NotImplementedError:
    cpus = 1

cmd = "make -j{}".format(cpus)
print("Running: " + cmd)
ret = os.system(cmd)

if ret == 0:
    print("all done")
else:
    print("build failed")
    sys.exit(1)
