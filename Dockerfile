FROM golang:1.18.3
COPY . /home/arij/projects/user1 
WORKDIR /home/arij/projects/user1
ENV HATEAOS user
ENV USER_DATABASE mongodb
ENV MONGO_HOST user-db
RUN go build -o /app main.go
CMD ["/app"]
EXPOSE 80
