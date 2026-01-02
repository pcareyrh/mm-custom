FROM karsten13/magicmirror:latest

USER root

RUN set -e; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get -qy --allow-unauthenticated install python3 python3-pip vim libsqlite3-dev sqlite3 mplayer; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    python3 --version;

USER node