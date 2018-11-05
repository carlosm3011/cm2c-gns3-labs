# Makefile for alpine router image
#

help:
	-echo "Targets are help, build, run, shell"
	
build:
	docker build -t lacnic_gns3_frr:v2 .

run: build
	docker run -ti lacnic_gns3_frr:v2

shell: build
	docker run -ti --entrypoint "/bin/sh" lacnic_gns3_frr:v2

