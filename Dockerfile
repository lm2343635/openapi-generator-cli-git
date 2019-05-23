FROM ubuntu

RUN apt update
RUN apt install -y git nodejs npm openjdk-11-jdk
RUN npm install @openapitools/openapi-generator-cli -g
