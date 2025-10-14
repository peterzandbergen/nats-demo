#!/bin/bash

WDIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))

source $WDIR/settings.env

docker kill $SERVER
docker network rm $NETWORK