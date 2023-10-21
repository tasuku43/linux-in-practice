#!/usr/bin/python3

import os, sys

ret = os.fork()

if ret == 0:
    print("# Child process")
    print("Child : pid = {}, parent : pid = {}".format(os.getpid(), os.getppid()))
    os.execve("/bin/echo", ["echo", "pid={} からこんにちは".format(os.getpid())], {})
    exit()
elif ret > 0:
    print("# Parent process")
    print("Parent : pid = {}, child : pid = {}".format(os.getpid(), ret))
    exit()

sys.exit(1)
