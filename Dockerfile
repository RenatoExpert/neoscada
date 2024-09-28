FROM bufbuild/buf:latest AS build
WORKDIR /build
COPY . .
RUN buf generate

FROM busybox AS run
WORKDIR /app
COPY --from=build /build .
CMD ls .

