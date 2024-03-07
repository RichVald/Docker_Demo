FROM node:15


# Create app directory
WORKDIR /app

# Retrieve app dependencies
COPY package.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . ./

# Expose app port
ENV PORT 3000
EXPOSE $PORT

#CMD [ "node", "index.js" ]
CMD [ "npm", "run", "dev"]