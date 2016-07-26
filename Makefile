build:
	docker build -f Dockerfile -t $(DOCKER_REGISTRY)/$(PROJECT_NAME):$(BRANCH_NAME)_$(TIMESTAMP) .
run:
	docker run -d \
	--name=fluentd-agent \
	-v /home/ubuntu/fluentd-agent/fluent.conf:/fluentd/etc/fluent.conf \
	-v /var/log/nginx/access.log:/fluentd/log/nginx/access.log \
	$(DOCKER_REGISTRY)/$(PROJECT_NAME):$(BRANCH_NAME)_$(TIMESTAMP)
clean:
	docker rm -f fluentd-agent
