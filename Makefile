# Makefile for alpine router image
#

help:
	-echo "Targets are help, build"
	
build:
	docker build -t cmrouter_frr:v1 .