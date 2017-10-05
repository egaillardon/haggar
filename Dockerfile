FROM golang:1.9-alpine
LABEL maintainer="emmanuel.gaillardon@orange.fr"
RUN go get github.com/gorsuch/haggar
ENTRYPOINT ["haggar"]
CMD ["-h"]
