FROM golang:1.19-alpine

# Set the Current Working Directory inside the container
WORKDIR $GOPATH/src/github.com/abhiongithub/Master-GoLang-Concurrency

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download all the dependencies
RUN go get -d -v ./...

# Install the package
RUN go install -v ./...

# This container exposes port 8080 to the outside world (since this is not a web application, no need to export the port)
# EXPOSE 8080

# Run the executable
CMD ["Master-GoLang-Concurrency"]