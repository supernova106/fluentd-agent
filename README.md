# fluentd-agent
<<<<<<< HEAD
- streaming logs to ES/S3/Kinesis with fluentd
- forward logs to fluentd master
# Notes
- equivalent path: `/var/log/td-agent/` `/fluentd/log/`
- config file: `/fluentd/etc/fluent.conf`
- plugins: `/fluentd/plugins/`
# Docker run
```
docker run -d -v /var/log/nginx/access.log:/fluentd/log/nginx/access.log supernova106/fluentd:agent_ubuntu14.04
```
=======
fluentd-agent to be deployed on marathon
>>>>>>> 4ff99e30256241bd9ac81207ee43f940260233fd
