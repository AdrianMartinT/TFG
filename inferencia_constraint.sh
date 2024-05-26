#!/bin/bash

echo "============================================"
date "+%H:%M:%S"
python3 ~/coral/pycoral/examples/classify_image.py --model ~/coral/pycoral/test_data/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite --labels ~/coral/pycoral/test_data/inat_bird_labels.txt --input ~/coral>
date "+%H:%M:%S"
echo "============================================"
