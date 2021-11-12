FROM golang AS build

RUN CGO_ENABLED=0  go get -ldflags '-w' github.com/santhosh-tekuri/jsonschema/v5/cmd/jv@latest

FROM alpine

COPY --from=build /go/bin/jv /usr/local/bin

ENTRYPOINT ["/usr/local/bin/jv"]