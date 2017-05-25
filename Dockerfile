FROM alpine:latest
RUN apk update && apk add hugo
COPY ./site /site
COPY ./scripts/startup.sh /tmp/startup.sh
RUN chmod +x /tmp/startup.sh
CMD ["/tmp/startup.sh"]
EXPOSE 1313
