FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive 
ENV LD_LIBRARY_PATH=/install/lib/x86_64-linux-gnu
RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils \
        curl \
        libc6-dev \
        ca-certificates \
        libssl-dev \
        libyaml-dev \
        libmicrohttpd-dev \
        libmongoc-dev \
        libsctp-dev \
        libcurl4-gnutls-dev \
        libtins-dev \
        libidn11-dev \
        libtalloc-dev \
        netbase \
        ifupdown \
        net-tools \
        python3-setuptools \
        python3-wheel \
        python3-pip \
        tcpdump \
        nano \
        iputils-ping \
        gdb \
        sudo \
        flex \
		bison \
		libgnutls28-dev \
		libgcrypt-dev \
		libbson-dev \
		libnghttp2-dev \
                tzdata \
        iptables && \
    apt-get autoremove -y 

COPY install/ /install/
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg -i /install/libssl1.1_1.1.1f-1ubuntu2.19_amd64.deb
RUN dpkg -i /install/libidn11_1.33-2.2ubuntu2_amd64.deb

EXPOSE 9090 38412
