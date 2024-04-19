FROM ubuntu:jammy

RUN apt update
RUN apt -y install build-essential \
                    make \
                    automake \
                    git \
                    wget \
                    vim \
                    ssh \
                    rsync \
                    fio \
                    ffmpeg

### Sysbench installation
RUN apt -y install libtool pkg-config libaio-dev libmysqlclient-dev libssl-dev libpq-dev
RUN git clone https://github.com/akopytov/sysbench.git sysbench

WORKDIR sysbench
RUN ./autogen.sh
RUN ./configure --with-mysql --with-pgsql
RUN make -j
RUN make install
RUN rm -rf sysbench

WORKDIR /root

### speedtest.py
RUN wget https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py

ENTRYPOINT [ "/bin/bash" ]