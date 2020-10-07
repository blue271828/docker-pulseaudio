FROM debian:buster-slim
LABEL maintainer="blue271828"

# Install dependencies
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    pulseaudio \
    wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

 WORKDIR /root
