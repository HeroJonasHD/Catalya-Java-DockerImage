FROM    ghcr.io/parkervcp/yolks:java_17

LABEL   author="UwUTastisch"

LABEL   org.opencontainers.image.source="https://github.com/HeroJonasHD/Catalya-Java-DockerImage"
LABEL   org.opencontainers.image.licenses=MIT

USER    root
RUN     apt update -y \
		    && apt install -y jq wget
USER    container
ENV     USER=container HOME=/home/container
WORKDIR /home/container