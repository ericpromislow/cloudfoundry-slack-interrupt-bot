FROM golang:alpine

ENV VERSION 0.5.0

RUN wget -qO /usr/bin/delegatebot "https://github.com/dpb587/slack-delegate-bot/releases/download/v${VERSION}/delegatebot-${VERSION}-linux-amd64" && \
    chmod +x /usr/bin/delegatebot

COPY . /execdir

ENTRYPOINT ["/execdir/entrypoint.sh"]
