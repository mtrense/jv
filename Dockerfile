FROM golang AS build

RUN go get github.com/santhosh-tekuri/jsonschema/v5/cmd/jv@latest

FROM alpine

COPY --from=build /go/bin/jv /usr/local/bin

ENTRYPOINT ["/usr/local/bin/jv"]