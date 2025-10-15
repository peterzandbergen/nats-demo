#!/bin/sh

nats stream add EVENTS \
    --subjects="events.>" \
    --storage=memory \
    --defaults