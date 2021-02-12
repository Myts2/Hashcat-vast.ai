FROM nvidia/cuda:10.2-devel-ubuntu18.04
RUN cat /etc/resolv.conf
RUN apt-get update && \
    apt-get install -y wget make clinfo build-essential git libcurl4-openssl-dev libssl-dev zlib1g-dev libcurl4-openssl-dev libssl-dev curl pkg-config

WORKDIR /hashcat

RUN git clone https://github.com/hashcat/hashcat.git && cd hashcat && make install -j8

RUN git clone https://github.com/hashcat/hashcat-utils.git && cd hashcat-utils/src && make
RUN ln -s /hashcat/hashcat-utils/src/cap2hccapx.bin /usr/bin/cap2hccapx

RUN git clone https://github.com/ZerBea/hcxtools.git && cd hcxtools && make install

RUN git clone https://github.com/ZerBea/hcxdumptool.git && cd hcxdumptool && make install

RUN git clone https://github.com/hashcat/kwprocessor.git && cd kwprocessor && make
RUN ln -s /root/kwprocessor/kwp /usr/bin/kwp

COPY hashcat.sh /hashcat
COPY hashcat.dict /hashcat
RUN chmod +x /hashcat/hashcat.sh
ENTRYPOINT ["/hashcat/hashcat.sh"]
