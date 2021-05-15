FROM node:14-slim

RUN apt-get update && apt-get install -qq ca-certificates curl git unzip

WORKDIR /srv

# fivem server
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/3895-c7462577b1ab6f3e5a10acdd80a47be28366ccee/fx.tar.xz | tar xJ -C ./

COPY ./resources ./resources

# fivem common resources
# RUN git clone https://github.com/citizenfx/cfx-server-data && \
# mv -v cfx-server-data/resources/* ./resources/

# RUN git clone https://github.com/ItsikNox/FiveM-Arkadia_ && \
# mv -v FiveM-Arkadia_/resources/* ./resources/

# mysql async 
# RUN git clone https://github.com/brouznouf/fivem-mysql-async ./resources/mysql-async

# extendedmode
# RUN git clone https://github.com/extendedmode/extendedmode ./resources/extendedmode

# RUN git clone https://github.com/esx-framework/esx_menu_default ./resources/esx_menu_default
# RUN git clone https://github.com/esx-framework/esx_menu_dialog ./resources/esx_menu_dialog
# RUN git clone https://github.com/esx-framework/esx_menu_list ./resources/esx_menu_list

# RUN git clone https://github.com/esx-framework/skinchanger ./resources/skinchanger
# RUN git clone https://github.com/esx-framework/esx_skin ./resources/esx_skin

# RUN git clone https://github.com/esx-framework/esx_ambulancejob ./resources/esx_ambulancejob
# RUN git clone https://github.com/esx-framework/esx_vehicleshop ./resources/esx_vehicleshop
# RUN git clone https://github.com/esx-framework/esx_taxijob ./resources/esx_taxijob
# RUN git clone https://github.com/esx-framework/esx_policejob ./resources/esx_policejob
# RUN git clone https://github.com/esx-framework/esx_jobs ./resources/esx_jobs

# RUN git clone https://github.com/esx-framework/esx_shops ./resources/esx_shops
# RUN git clone https://github.com/esx-framework/esx_holdup ./resources/esx_holdup
# RUN git clone https://github.com/esx-framework/esx_weaponshop ./resources/esx_weaponshop
# RUN git clone https://github.com/esx-framework/esx_drugs ./resources/esx_drugs

# RUN git clone https://github.com/esx-framework/esx_phone ./resources/esx_phone
# RUN git clone https://github.com/esx-framework/esx_license ./resources/esx_license

# RUN git clone https://github.com/esx-framework/esx_billing ./resources/esx_billing
# RUN git clone https://github.com/esx-framework/esx_addonaccount ./resources/esx_addonaccount
# RUN git clone https://github.com/esx-framework/esx_addoninventory ./resources/esx_addoninventory
# RUN git clone https://github.com/esx-framework/esx_society ./resources/esx_society

# RUN git clone https://github.com/esx-framework/esx_service ./resources/esx_service
# RUN git clone https://github.com/esx-framework/instance ./resources/instance
# RUN git clone https://github.com/esx-framework/esx_datastore ./resources/esx_datastore

# RUN git clone https://github.com/esx-framework/cron ./resources/cron


# Cops_FiveM
# RUN git clone https://github.com/FiveM-Scripts/Cops_FiveM && \
# mv Cops_FiveM/police ./resources/police

# ghmattimysql
# RUN curl https://github.com/GHMatti/ghmattimysql/releases/download/1.3.2/ghmattimysql.zip -O -J -L && \
# RUN curl https://github.com/GHMatti/FiveM-MySQL/releases/download/0.6.1/GHMattiMySQL.zip -O -J -L && \
# unzip GHMattiMySQL.zip -d ./resources && \
# rm ./resources/GHMattiMySQL/config.json

# # esx framework
# RUN git clone --branch develop https://github.com/esx-framework/es_extended ./resources/[local]/es_extended && \
# cd ./resources/[local]/es_extended && \
# npm install --production && \
# mkdir -p modules/__user__ && \
# touch modules/__user__/modules.json

# fsn
# RUN git clone https://github.com/Diabl0h/FiveM-FSN-Framework && \
# mv FiveM-FSN-Framework/* ./resources

# vRP
# RUN git clone https://github.com/ImagicTheCat/vRP && \
# mv vRP/* ./resources

HEALTHCHECK --interval=10s --timeout=3s --start-period=3s CMD timeout 3 bash -c 'cat < /dev/null > /dev/tcp/localhost/30120'

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]

CMD ["+exec", "/srv/server.cfg"]