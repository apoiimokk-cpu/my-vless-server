FROM alpine:latest
RUN apk add --no-cache curl unzip
RUN curl -L https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -o v2ray.zip && \
    unzip v2ray.zip && \
    chmod +x v2ray
COPY config.json /config.json
CMD ["./v2ray", "-config", "/config.json"]
