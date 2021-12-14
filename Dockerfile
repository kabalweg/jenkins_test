FROM node:16.13.1-alpine

ENV SOURCE_DIR=/

COPY . $SOURCE_DIR
WORKDIR $SOURCE_DIR

RUN npm i -g aws-cdk typescript
