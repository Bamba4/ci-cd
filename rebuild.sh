#!/bin/bash
docker-compose down
docker-compose build
docker-compose down --volumes 
docker-compose up -d
