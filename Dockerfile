FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /minecraft

VOLUME /minecraft

RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN echo "eula=true" > eula.txt

EXPOSE 25565

ENTRYPOINT [ "java" ]

CMD ["-Xmx1024M", "-Xms1024M", "-jar", "spigot-1.20.4.jar", "nogui" ]