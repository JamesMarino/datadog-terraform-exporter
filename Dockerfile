FROM golang:1.13

WORKDIR /app/datadog-terraform-exporter

COPY go.mod .
COPY go.sum .

RUN go mod download
COPY app app
COPY templates templates

RUN go get -u github.com/jteeuwen/go-bindata/... && go-bindata -o app/templates.go templates/
RUN cd app && go build -o ../bin/datadog-terraform-exporter

ENTRYPOINT ["./bin/datadog-terraform-exporter"]
