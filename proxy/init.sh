#!/bin/bash

cp /etc/hosts /etc/hosts.tmp
umount /etc/hosts
mv /etc/hosts.tmp /etc/hosts
echo "127.0.0.1 default_vhost" >> /etc/hosts
nginx -q > /dev/null &
/proxy/bin/docker-gen -watch -notify "nginx -s reload" /proxy/nginx.tmpl /etc/nginx/conf.d/default.conf

