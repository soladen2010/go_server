# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Go get and build
RUN go get github.com/willejs/go-hello-world
RUN go install github.com/willejs/go-hello-world

# Run the service
ENTRYPOINT /go/bin/g-hello-world

# Document that the service listens on port 8080.
EXPOSE 8484