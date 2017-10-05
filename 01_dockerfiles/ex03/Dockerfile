FROM alpine:3.6
RUN \
	adduser -Ds $(which sh) git \
	&& apk --update --upgrade add \
	go git libc-dev
USER git
RUN \
	mkdir -p /home/git/go/src/github.com/gogits \
	&& cd /home/git/go/src/github.com/gogits \
	&& git clone --depth=1 -b develop https://github.com/gogits/gogs \
	&& cd gogs \
	&& go build -v
WORKDIR /home/git/go/src/github.com/gogits/gogs
EXPOSE 3000
CMD ["./gogs", "web"]
