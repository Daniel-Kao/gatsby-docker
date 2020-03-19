FROM node:12-buster 

COPY sources.list ./etc/apt

RUN apt-get update \
  && apt-get install -y libgl1 libxi6 make python3 \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g cnpm 