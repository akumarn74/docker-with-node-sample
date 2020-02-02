FROM node:10

# Create app directory
WORKDIR /usr/app

COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .


EXPOSE 8080

# Default comman
CMD [ "npm", "start" ]