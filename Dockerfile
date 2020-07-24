FROM golang:alpine
RUN mkdir /app 
ADD ./app /app
WORKDIR /app 
RUN go build -o main .
RUN adduser -S -D -H -h /app appuser
RUN chmod a+rwx /app
EXPOSE 80
#USER appuser
CMD ["./main"]
