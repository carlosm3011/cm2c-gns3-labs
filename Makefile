#
# Top-Level Makefile
# carlos@lacnic.net 20181105
#

all: docker_host docker_router_frr docker_router_quagga

docker_host:
	cd docker-host && make build

docker_router_frr:
	cd docker-router-frr && make build

docker_router_quagga:
	cd docker-router-quagga && make build


