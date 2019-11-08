FROM gcc:9.2.0

RUN apt-get update && apt-get -y install cmake

WORKDIR /
RUN git clone --recursive https://github.com/WebAssembly/wabt

WORKDIR /wabt
RUN make gcc-release
