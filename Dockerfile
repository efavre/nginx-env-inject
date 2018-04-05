FROM openresty/openresty:1.13.6.1-1-alpine

COPY modules/envinject.lua /usr/local/openresty/nginx/modules/envinject.lua
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY SampleSite /usr/local/openresty/nginx/html
