# Build image
FROM vapor/swift:5.2 as build
WORKDIR /build
COPY ./Package.swift ./
RUN swift package resolve
COPY . .
RUN swift build -c debug --enable-test-discovery

#Run image
FROM vapor/ubuntu:18.04
WORKDIR /run
COPY --from=build /build/.build/debug /run
COPY --from=build /usr/lib/swift /usr/lib/swift/

ENTRYPOINT ["./Run"]
CMD ["serve", "--env", "development", "--hostname", "0.0.0.0", "--port", "8080"]
