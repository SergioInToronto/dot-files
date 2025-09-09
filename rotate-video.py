#! /usr/bin/env python
# -*- coding: utf-8 -*-
"""
rotate_video.py

 A (simple) library to rotate movies.

 source: https://github.com/laurentperrinet/photoscripts/blob/master/rotate_video.py

"""

import sys, os, glob


def rotate(PATH, CW=False):
    """
    0 = 90CounterCLockwise and Vertical Flip (default)
    1 = 90Clockwise
    2 = 90CounterClockwise
    3 = 90Clockwise and Vertical Flip
    """
    EXT = PATH.split(".")[-1]
    #     print 'DEBUG: # of transpose = ', str(1+int(CW))
    cmd = (
        'ffmpeg  -i "%s" -vf "transpose=%s" -c:a copy -y "%s-tmp.%s" && mv "%s-tmp.%s" "%s"'
        % (PATH, str(1 + int(CW)), PATH, EXT, PATH, EXT, PATH)
    )
    print("DEBUG: cmd = ", cmd)
    try:
        os.system(cmd)
    except Exception as e:
        print("Command ", cmd, " failed, error is: ", e)


if __name__ == "__main__":
    args = sys.argv[1:]

    if not len(args):
        print("""
        Usage: python rotate_video.py [-c] 'pattern'

        the -c option is to turn video counter-clockwise --- the default is
        clockwise.

        """)
    else:
        CW = args[0]
        PATHS = args[1:]
        if CW != "-c":
            CW = ""
            PATHS = args
        for PATH in PATHS:
            for filename in glob.glob(PATH):
                print("Processing file ", filename)
                rotate(filename, CW == "-c")
