FROM node:14.18.0-alpine
ADD package.json /tmp/package.json
RUN cd /tmp && yarn install --silent --production && mkdir -p /app && cp -a /tmp/node_modules /app/
WORKDIR /app
ADD . /app
CMD ["yarn", "start"]
