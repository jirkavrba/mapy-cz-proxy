#! /bin/bash

set -x
set -e

sed "s/\${PORT}/${PORT}/" /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
nginx
