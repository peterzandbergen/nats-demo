# Tests

```bash
nats publish "events.test-subject.hallo" "hallo" --count=1

nats subscribe "test-subject.>"

export NATS_URL=nats://nats-server:4222
```

## Create a stream

* The stream must persist events on the topic events.>
* The name of the stream is EVENTS
* storage in memory

```bash
nats stream add EVENTS \
    --subjects="events.>" \
    --storage=memory \
    --defaults
```

## Publish some message

```bash
nats publish "events.customer-arrived" "He's here"
nats publish "events.customer-balked" "He's gone"
nats publish "events.customer-returned" "He's back"
nats publish "events.customer-returned.n" "2"
```

Inspect the topics in the stream and the number of messages

```bash
nats stream subjects EVENTS
```









