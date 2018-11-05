# Makefile for alpine router image
#

help:
	-echo "Targets are help, build, shell, run"
	
build:
	docker build -t lacnic_gns3_quagga:v1 .

run: build
	docker run -ti lacnic_gns3_quagga:v1

shell: build
	docker run -ti --entrypoint "/bin/sh" lacnic_gns3_quagga:v1