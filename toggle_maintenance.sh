#!/usr/bin/env bash

if [ -f /etc/nginx/conf.d/maintenance.mode ]; then
    rm /etc/nginx/conf.d/maintenance.mode
    echo "maintenance mode: OFF"
else
    touch /etc/nginx/conf.d/maintenance.mode
    echo "maintenance mode: ON"
fi