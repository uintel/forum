FROM ubuntu:latest
RUN apt-get update && apt-get install -y expect

WORKDIR /forum

COPY install.sh ./install.sh
RUN chmod +x install.sh
RUN chmod +x setup.sh


RUN ./install.sh
RUN rm ./install.sh