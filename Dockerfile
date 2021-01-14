FROM debian:10

RUN apt-get update -y \
	&& apt-get install virt-manager virt-viewer ssh -y

CMD virt-manager && tail -f /dev/null
