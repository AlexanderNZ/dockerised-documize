FROM alpine:latest

ENV DOCUMIZE_VERSION v3.1.0
ENV DOCUMIZE_LINK https://github.com/documize/community/releases/download/$DOCUMIZE_VERSION/documize-community-linux-amd64

RUN apk add wget
RUN wget $DOCUMIZE_LINK
RUN chmod a+x documize-community-linux-amd64

COPY config-postgresql.conf documize.conf

EXPOSE 5001

CMD ./documize-community-linux-amd64