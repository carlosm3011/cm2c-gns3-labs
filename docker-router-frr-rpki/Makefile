##
#
##

build: 
	docker build -t lacnic_gns3_frr_rpki:v1 .

run: build
	docker run --privileged -ti lacnic_gns3_frr_rpki:v1 /bin/bash

shell: build
	docker run --privileged -ti --entrypoint=/bin/bash -v $$(pwd):/export  lacnic_gns3_frr_rpki:v1 

