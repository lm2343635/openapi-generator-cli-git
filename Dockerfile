FROM ubuntu

RUN apt update
RUN apt install -y git nodejs npm openjdk-11-jdk jq
RUN npm install @openapitools/openapi-generator-cli@cli-4.0.0 -g
