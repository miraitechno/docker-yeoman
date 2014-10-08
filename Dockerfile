FROM node:0.10.32

MAINTAINER Miraitechno, Inc.

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y ruby ruby-compass ruby-sass
RUN npm install -g yo@1.3.0 \
                   bower@1.3.12 \
                   grunt-cli@0.1.13 \
                   generator-angular@0.9.8
RUN useradd -m -d /home/developer -s /bin/bash developer && \
    mkdir /home/developer/application && \
    chown developer /home/developer/application
WORKDIR /home/developer/application
USER developer
EXPOSE 9000 35729
CMD ["/bin/bash"]

