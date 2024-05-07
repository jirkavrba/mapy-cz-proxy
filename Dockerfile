FROM nginx:1.23.4-alpine

RUN apk add --no-cache bash sed
WORKDIR /workspace

COPY ./nginx.conf /etc/nginx/nginx.conf.template
COPY ./entrypoint.sh /workspace/entrypoint.sh

ENV PORT 8080

ENTRYPOINT ["bash", "/workspace/entrypoint.sh"]

