FROM node:14-slim

RUN apt-get update && apt-get install -qq ca-certificates curl git unzip

WORKDIR /srv

# fivem server
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/3895-c7462577b1ab6f3e5a10acdd80a47be28366ccee/fx.tar.xz | tar xJ -C ./

# fivem common resources
RUN git clone https://github.com/citizenfx/cfx-server-data && \
mv cfx-server-data/resources ./

# mysql async 
RUN git clone https://github.com/brouznouf/fivem-mysql-async ./resources/mysql-async

# Cops_FiveM
# RUN git clone https://github.com/FiveM-Scripts/Cops_FiveM && \
# mv Cops_FiveM/police ./resources/police
# RUN curl https://github.com/GHMatti/ghmattimysql/releases/download/1.3.2/ghmattimysql.zip -O -J -L && \
# unzip ghmattimysql.zip -d ./resources && \
# rm ./resources/ghmattimysql/config.json

# # esx framework
# RUN git clone --branch develop https://github.com/esx-framework/es_extended ./resources/[local]/es_extended && \
# cd ./resources/[local]/es_extended && \
# npm install --production && \
# mkdir -p modules/__user__ && \
# touch modules/__user__/modules.json

# fsn
RUN git clone https://github.com/Diabl0h/FiveM-FSN-Framework && \
mv FiveM-FSN-Framework/* ./resources

HEALTHCHECK --interval=10s --timeout=3s --start-period=3s CMD timeout 3 bash -c 'cat < /dev/null > /dev/tcp/localhost/30120'

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]

CMD ["+exec", "/srv/server.cfg"]