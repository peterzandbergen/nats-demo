#!/bin/bash

WDIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))

source $WDIR/settings.env

# Create the network
docker network create $NETWORK

docker run --rm -it --detach \
    --network nats-network  \
    --name $SERVER \
    nats:linux --jetstream

docker logs --follow $SERVER