# ELK stack for handling Crust logs

Crust services log requests, responses, errors and other events as 
JSON that can be forwared directly to logstash, filtred and dispayed in
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
        gelf-address: "tcp://127.0.0.1:12201"
```
