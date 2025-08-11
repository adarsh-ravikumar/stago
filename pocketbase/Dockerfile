FROM alpine:3.20

RUN apk add --no-cache curl unzip

WORKDIR /pocketbase

RUN curl -L -o pocketbase.zip https://github.com/pocketbase/pocketbase/releases/latest/download/pocketbase_0.29.2_linux_amd64.zip \
    && unzip pocketbase.zip -d . \
    && rm pocketbase.zip

RUN mkdir -p pb_data

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090", "--dir=pb_data"]
