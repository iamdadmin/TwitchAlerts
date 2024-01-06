FROM node:20-alpine

ENV S6_OVERLAY_VERSION=3.1.6.2
ENV PUID=901
ENV PGID=901
ENV PORT=3000
ENV DATABASE_URL="/database/database.sqlite3"

WORKDIR /app

COPY twitchalerts/ /app/

RUN npm install --omit=dev \ 
    && apk add --no-cache curl coreutils tzdata shadow xz \
    && alpineArch="$(apk --print-arch)" \
        && case "${alpineArch##*-}" in \
            aarch64) ARCH='aarch64';; \
            arm) ARCH='arm';; \
            armhf) ARCH='armhf';; \
            x86_64) ARCH='x86_64';; \
        *) echo "unsupported architecture"; exit 1 ;; \
        esac \
    && cd /tmp \
    && curl -L -s https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz \
    && tar -C / -Jxpf s6-overlay-noarch.tar.xz \
    && curl -L -s https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-${ARCH}.tar.xz \
    && tar -C / -Jxpf s6-overlay-${ARCH}.tar.xz \
    && apk del --no-cache curl \
    && apk del --purge \
    && rm -rf /tmp/s6* \
    && addgroup -g $PGID -S twitchalerts \
    && adduser -u $PUID -G twitchalerts -H -S twitchalerts

COPY docker /

EXPOSE ${PORT}
VOLUME /database

ENTRYPOINT ["/init"]