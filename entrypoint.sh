#!/bin/bash

cp /basic-auth.conf /etc/nginx/conf.d/default.conf
sed -e "s/Admin/$TITLE/" -i /etc/nginx/conf.d/default.conf
sed -e "s/127.0.0.1/$HOST/" -i /etc/nginx/conf.d/default.conf
sed -e "s/80/$PORT/" -i /etc/nginx/conf.d/default.conf

htpasswd -c -b /etc/nginx/.htpasswd $USER $PASS

nginx -g "daemon off;"
