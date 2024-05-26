#!/bin/bash 
if lsusb | grep -q "Google Inc."; then 
	export TPU_AVAILABLE=1 
else 
	export TPU_AVAILABLE=0 
fi 

if [ "$TPU_AVAILABLE" -eq 1 ]; then 
	echo "TPU disponible en este nodo. Ejecutando trabajo que utiliza TPU..." >> inferencia.txt 
	python3 examples/classify_image.py --model test_data/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite --labels test_data/inat_bird_labels.txt --input test_data/parrot.jpg >> inferencia.txt 2>&1
else 
	echo "No se encontró TPU en este nodo. Ejecutando trabajo que no utiliza TPU..." >> inferencia.txt 
fi
