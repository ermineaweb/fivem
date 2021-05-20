FROM node:14-slim

RUN apt-get update && apt-get install -qq ca-certificates curl git unzip

WORKDIR /srv

# fivem server
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/3895-c7462577b1ab6f3e5a10acdd80a47be28366ccee/fx.tar.xz | tar xJ -C ./

COPY ./resources ./resources

# Cops_FiveM
# RUN git clone https://github.com/FiveM-Scripts/Cops_FiveM && \
# mv Cops_FiveM/police ./resources/police

HEALTHCHECK --interval=10s --timeout=3s --start-period=3s CMD timeout 3 bash -c 'cat < /dev/null > /dev/tcp/localhost/30120'

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]

CMD ["+exec", "/srv/server.cfg"]