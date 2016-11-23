Docker Monitor
--------------

This is a full stack solution to setup and use [Graphite](https://graphiteapp.org)(with [Graphite-API](https://github.com/brutasse/graphite-api)) + [Grafana](http://grafana.org) + [StatsD](https://github.com/etsy/statsd) + [Netdata](https://netdata.firehol.org)


### Usage

```
$ docker-compose -f graphite.yml [ -f grafana.yml ] [ -f stats.d ] [ -f netdata.yml ] up
```
