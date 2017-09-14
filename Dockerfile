FROM ubuntu:xenial
MAINTAINER Yasuyuki YAMADA <yasuyuky@idein.jp>

RUN apt-get -y update && apt-get -y install curl gcc pkg-config git
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain stable
ENV PATH $PATH:/root/.cargo/bin
RUN mkdir source
WORKDIR /source
CMD ["bash"]
