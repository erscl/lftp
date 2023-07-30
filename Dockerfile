FROM debian:trixie-slim
LABEL maintainer "marineotter"

RUN apt-get update && apt-get install -y \
    lftp git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/lftp"]
