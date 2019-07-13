#!/bin/sh

docker run --rm -it \
	-p 8888:8888 \
	-p 5000:5000 \
	-v $PWD:/home/node/app \
	--workdir /home/node/app \
	--network host \
	--entrypoint /bin/bash \
	node:slim
