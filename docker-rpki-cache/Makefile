# Makefile for alpine router image
#

help:
	-echo "Targets are help, build"
	
build:
	docker build -t lacnic_gns3_rpki_cache:v1 .

run: build
	docker run -d -m 1024m -p 8080:8080/tcp -v $$(pwd):/export lacnic_gns3_rpki_cache:v1 

shell: build
	docker run -ti -p 8080:8080/tcp --entrypoint=/bin/bash -v $$(pwd):/export lacnic_gns3_rpki_cache:v1 

