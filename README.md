# ELK stack for handling Crust logs

Crust services log requests, responses, errors and other events as 
JSON that can be forwarded directly to logstash, filtered and displayed in
Kibana.

## Using GELF docker logging driver and GELF ELK server

See `logstash/02-gelf-input.conf` for ELK configuration details. 

Extend your `docker-compose.yml` services with logging section:
```yaml
services:
  some-service:
    # ... service settings ...
    logging:
      driver: gelf
      options:
        gelf-address: "tcp://elk:12201"
```
