FROM ubuntu

RUN apt update
RUN apt install -y git nodejs npm openjdk-11-jdk jq ruby-full
RUN npm install @openapitools/openapi-generator-cli@cli-4.0.0 -g
RUN gem install cocoapods -v 1.7.5

RUN adduser cocoapods
USER cocoapods

RUN echo "export LANG=en_US.UTF-8" >> ~/.bashrc
RUN echo "export SWIFT_POST_PROCESS_FILE=/usr/local/bin/swiftformat" >> ~/.bashrc
