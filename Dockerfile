FROM ubuntu
RUN \
  apt-get update && \
  apt-get install -y gnupg && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5 && \
  echo 'deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse' | tee /etc/apt/sources.list.d/mongodb-org-3.6.list && \
  apt-get update && \
  apt-get install -y mongodb-org --allow-unauthenticated && apt-get install -y awscli && \
  rm -rf /var/lib/apt/lists/*
VOLUME ["/data/db"]
WORKDIR /data
CMD ["mongod"]
EXPOSE 27017:27017
