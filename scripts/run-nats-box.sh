#!/bin/bash

WDIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))

source $WDIR/settings.env

ARG=${1:- sh}

docker run --rm -it --network nats-network \
    --env NATS_URL=$SERVER:4222 \
    natsio/nats-box $ARG

