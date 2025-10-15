#!/bin/sh

nats publish "events.customer-arrived" "He's here"
nats publish "events.customer-balked" "He's gone"
nats publish "events.customer-returned" "He's back"
nats publish "events.customer-returned.n" "2"

