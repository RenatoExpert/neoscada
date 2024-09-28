FROM bufbuild/buf:latest AS build
WORKDIR /build
COPY . .
RUN buf build
CMD ls

