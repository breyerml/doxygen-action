# Container image that runs your code
FROM alpine:3.4

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Install required packages
RUN apk update && apk upgrade && apk add doxygen=1.8.11-r0 graphviz ttf-freefont

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
