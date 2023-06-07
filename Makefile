# Makefile for FlowManager

.DEFAULT_GOAL := start-full-mobile-flow

DOCKER_COMPOSE_FILE=./deploy/local/docker-compose.yml

start-docker-compose:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d


start-user-micro-service:
	cd ../user-micro-service && make

start-debate-zone-micro-service:
	cd ../debate-zone-micro-service && make

start-notification-micro-service:
	cd ../notification-micro-service && make


start-mobile:
	cd ../mobile-client && make

start-web:
	cd ../web-client && make


start-full-mobile-flow: \
	start-docker-compose \
	start-user-micro-service \
	start-debate-zone-micro-service \
	start-notification-micro-service \
	start-mobile

start-full-web-flow: \
	start-docker-compose \
	start-user-micro-service \
	start-debate-zone-micro-service \
	start-notification-micro-service \
	start-web