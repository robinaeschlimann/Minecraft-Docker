FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /minecraft

VOLUME /minecraft

RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    wget \
    && rm -rf /var/lib/apt/lists/*

#ADD plugins ./plugins
#ADD libraries ./libraries
#ADD bundler ./bundler
#ADD config ./config
#ADD world ./world
#ADD world_nether ./world_nether
#ADD world_the_end ./world_the_end
#
#COPY ./bukkit.yml .
#COPY ./commands.yml .
#COPY ./craftbukkit.jar .
#COPY ./help.yml .
#COPY ./ops.json .
#COPY ./permissions.yml .
#COPY ./server.properties .
#COPY ./spigot.yml .
#COPY ./usercache.json .
#COPY ./whitelist.json .
#COPY ./server-icon.png .


#COPY ./spigot-1.20.4.jar .

RUN echo "eula=true" > eula.txt

EXPOSE 25565

ENTRYPOINT [ "java" ]

CMD ["-Xmx1024M", "-Xms1024M", "-jar", "spigot-1.20.4.jar", "nogui" ]