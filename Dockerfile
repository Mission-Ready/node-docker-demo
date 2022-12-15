# node is the image we are starting from. 
# node is base on another image layer. Eg - Debian linux
FROM node:16

# Create app directory - directory to hold the application code inside the image
# Default location for all subsequent commands
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Installing the node.js dependency 
RUN npm install

# Bundle app source
#  COPY ["<src>", "<dest>"]
# COPY ["<src1>", "<src2>",..., "<dest>"].
COPY src .

# Makes sure port 8080 is available to the outside world (outside the container)
EXPOSE 8080

CMD [ "node", "server.js" ]