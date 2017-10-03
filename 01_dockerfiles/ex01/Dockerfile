FROM debian:stretch
ENV LANG=C.UTF-8
RUN apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get -y install wget bzip2 \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -b / -m ts
WORKDIR /ts
RUN wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 \
	&& tar -j -x -f *.tar.bz2 --strip-components=1 \
	&& rm *.tar.bz2
USER ts
EXPOSE 10011 9987/udp 30033
# Default serverquery port (TCP in): 10011
# Default voice port (UDP in): 9987
# Default filetransfer port (TCP in): 30033
# Default tsdns port (TCP in): 41144
CMD ./ts3server_minimal_runscript.sh
