# Makefile for FlowManager

# Default target
.PHONY: start-web-user-micro-service

# Web + User Micro Service
start-web-user-micro-service: start-web start-user-micro-service

# Web client
start-web:
	cd ../web-client && make web-run-flow

# User Micro Service
start-user-micro-service:
	cd ../micro-service-user && make user-micro-service-run-flow
