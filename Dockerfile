# use node base image
FROM node:10

# add current folder, excepting files in .dockerignore
ADD . /node
WORKDIR /node

# install dependencies
RUN yarn

# specify command
CMD node /node/server/mongodb-proxy.js

# expose port by default
EXPOSE 3000/tcp