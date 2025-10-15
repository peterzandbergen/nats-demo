#!/bin/bash

WDIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
source $WDIR/settings.env

# Run the nats box with the commands dir mounted
docker run --rm -it --network nats-network \
    --env-file $WDIR/box-settings.env \
    --user $(id -u):$(id -g) \
    --mount type=bind,source=$(readlink -f $WDIR/nats-commands),destination=/commands \
    docker.io/natsio/nats-box

