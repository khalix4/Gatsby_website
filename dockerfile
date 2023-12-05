
FROM node:14


WORKDIR /app

COPY package*.json ./

#RUN npm install -g gatsby-cli

# Install dependencies
RUN npm install

COPY . .
RUN npm build

EXPOSE 8000

CMD ["npm", "run", "start"]
