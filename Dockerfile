# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# create the user
RUN useradd -r -s /bin/false sol
# Go get and build
# RUN go get github.com/willejs/go-hello-world
# RUN go install github.com/willejs/go-hello-world
# RUN go mod init goserver
# RUN go build goserver
RUN go install github.com/soladen2010/go_server@latest

# Run the service
ENTRYPOINT /go/bin/go_server

# Document that the service listens on port 8080.
EXPOSE 8484
