#!/bin/bash

docker stop `docker ps -aq` && docker rm `docker ps -aq` && docker volume prune -f
