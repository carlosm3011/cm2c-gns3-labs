# Makefile for alpine router image
#

help:
	-echo "Targets are help, build"
	
build:
	docker build -t cmrouter_frr:v1 .

run: build
	docker run -ti cmrouter_frr:v1

shell: build
	docker run -ti --entrypoint "/bin/sh" cmrouter_frr:v1

