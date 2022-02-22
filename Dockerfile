FROM ubuntu:21.04
ARG UBUNTU_VERSION=21.04
ARG MEGA_VERSION=1.4.0-1.1_amd64
RUN apt update \
    && apt install -y wget \
    && wget -P /opt https://mega.nz/linux/MEGAsync/xUbuntu_${UBUNTU_VERSION}/amd64/megacmd_${MEGA_VERSION}.deb \
    && dpkg -i /opt/megacmd_1.4.0-1.1_amd64.deb
ENTRYPOINT [ "mega-cmd-server" ]