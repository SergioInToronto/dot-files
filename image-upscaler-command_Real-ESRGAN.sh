#! /bin/bash

# https://github.com/xinntao/Real-ESRGAN

# Takes a long time with no output. Watch CPU/GPU and memory usage

# On CPU, need extra arg --fp32

python inference_realesrgan.py --fp32 -n RealESRGAN_x4plus -i input_image.jpg -o ./
