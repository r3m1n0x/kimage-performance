FROM ubuntu:jammy

RUN apt update
RUN apt -y install make \
                    automake \
                    git \
                    vim \
                    ssh \
                    rsync
                    
# Sysbench installation
RUN apt -y install libtool pkg-config libaio-dev libmysqlclient-dev libssl-dev libpq-dev
RUN git clone https://github.com/akopytov/sysbench.git sysbench

WORKDIR sysbench
RUN ./autogen.sh
RUN ./configure --with-mysql --with-pgsql
RUN make -j
RUN make install

WORKDIR /root
RUN rm -rf sysbench

ENTRYPOINT [ "/bin/bash" ]