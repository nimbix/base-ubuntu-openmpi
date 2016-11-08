FROM nimbix/ubuntu-cuda:trusty
MAINTAINER Nimbix, Inc

ENV MPI_VERSION 2.0.1

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    libibverbs-dev \
    libibverbs1 \
    librdmacm1 \
    librdmacm-dev \
    rdmacm-utils \
    libibmad-dev \
    libibmad5 \
    byacc \
    libibumad-dev \
    libibumad3 \
    flex && \
    apt-cache clean && \
    rm -rf /var/lib/apt/lists/* \
    && \
    wget https://www.open-mpi.org/software/ompi/v2.0/downloads/openmpi-${MPI_VERSION}.tar.bz2 && \
    tar xvf openmpi-${MPI_VERSION}.tar.bz2 && \
    cd /tmp/openmpi-${MPI_VERSION} && \
    ./configure --with-cuda=/usr/local/cuda && \
    make -j4 && \
    make install && \
    cd /tmp && \
    rm -rf /tmp/openmpi-${MPI_VERSION}

ADD ./scripts /usr/local/scripts
