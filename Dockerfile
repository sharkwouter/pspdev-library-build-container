FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update -y && \
    apt-get dist-upgrade -y && \
    apt-get install -y wget autoconf automake bison bzip2 cmake doxygen flex gettext g++ gcc git gzip \
    libarchive-dev libcurl4-openssl-dev libelf-dev libgpgme-dev libncurses5-dev \
    libreadline-dev libssl-dev libtool-bin libusb-dev m4 make patch pkg-config \
    python3 python3-venv subversion tar tcl texinfo unzip wget xz-utils && \
    apt-get -y clean autoclean autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/
RUN wget https://github.com/pspdev/pspdev/releases/latest/download/pspdev-linux-x64.tar.gz && \
    tar -xvf pspdev-linux-x64.tar.gz -C / && \
    rm pspdev-linux-x64.tar.gz
