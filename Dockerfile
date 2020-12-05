FROM node:latest

# making a new dir and setting it as the work directory
RUN mkdir -p /app/src

WORKDIR /app/src

# using the dot gives the current dir
COPY package.json .

RUN npm install

# copying from the source (current folder, so . ) to the target (also . for WORKDIR)
COPY . .

# exposes the port to view in browser
EXPOSE 3000

# run npm and start
CMD ["npm", "start"]

