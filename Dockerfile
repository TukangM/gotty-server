FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y