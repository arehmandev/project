FROM centos:latest

ENV GO15VENDOREXPERIMENT=1
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

COPY . /go/src/github.com/arehmandev/project

EXPOSE 5051

RUN bash /go/src/github.com/arehmandev/project/execute.sh

CMD bash /go/src/github.com/arehmandev/project/start.sh
