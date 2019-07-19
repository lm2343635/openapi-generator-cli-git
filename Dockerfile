FROM ubuntu

RUN apt update
RUN apt install -y git nodejs npm openjdk-11-jdk
RUN npm install @openapitools/openapi-generator-cli@cli-4.0.0 -g
RUN echo "export SWIFT_POST_PROCESS_FILE=/usr/local/bin/swiftformat" >> ~/.bashrc
