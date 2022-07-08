FROM golang:1.18.3
#COPY . /go/src/github.com/ArijMansour/catalogue_microservice
COPY . /home/arij/projects/user  
#WORKDIR /go/src/github.com/ArijMansour/catalogue_microservice
WORKDIR /home/arij/projects/user
#RUN go get -u github.com/FiloSottile/gvt
#RUN gvt restore && \CGO_ENABLED=0 GOOS=linux 
#RUN go build -a -installsuffix cgo-o /app github.com/ArijMansour/catalogue_microservice/cmd/cataloguesvc
RUN go build main.go
CMD ["/main"]
EXPOSE 8080
