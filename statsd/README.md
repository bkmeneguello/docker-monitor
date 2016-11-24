StatsD
------

A network daemon that runs on the [Node.js](http://nodejs.org) platform and listens for statistics, like counters and timers, sent over UDP or TCP and sends aggregates to one or more pluggable backend services (e.g., [Graphite](https://graphiteapp.org)).

### Usage

```
$ docker run -d -p 8125:8125/udp -v /full/path/to/statsd/config.js:/statsd/config.js:ro bkmeneguello/statsd
```

A sample config.js is provided. Customize "graphiteHost" and other parameters to match your needs.
