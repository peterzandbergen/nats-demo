# Tests

```bash
nats publish "events.test-subject.hallo" "hallo" --count=1

nats subscribe "test-subject.>"

export NATS_URL=nats://nats-server:4222
```

## Create a stream

* The name of the stream is EVENTS
* The stream must persist events on the topic events.>
* storage in memory

```bash
nats stream add EVENTS \
    --subjects="events.>" \
    --storage=memory \
    --defaults
```

## Publish some messages

Publish some messages on different subjects, that all should be backed by the stream.

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









