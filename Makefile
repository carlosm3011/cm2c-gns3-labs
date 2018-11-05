#
# Top-Level Makefile
#

docker_host:
	cd docker-host && make

docker_router_frr:
	cd docker-router-frr && make

docker_router_quagga:
	cd docker-router-quagga && make

