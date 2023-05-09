# IMAGE LANGUAGE
FROM golang:1.16

# FOLDER CONTAINER
WORKDIR /go/src
# ADD PATH GO/BIN IN CONTAINER
ENV PATH="/go/bin:${PATH}"

# UPDATE AND INSTALL THE LIB RDKAFKA
RUN apt-get update && \
    apt-get install build-essential librdkafka-dev -y

#KEEP CONTAINER ACTIVE
CMD ["tail", "-f", "/dev/null"]