FROM alpine
COPY . /
ENTRYPOINT ["/loggen.sh"]

