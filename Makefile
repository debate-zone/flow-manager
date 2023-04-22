# Makefile for FlowManager

# Web client
start-web:
	cd ../web-client && make web-run-flow

# User Micro Service
start-user-micro-service:
	cd ../micro-service-user && make user-micro-service-run-flow
