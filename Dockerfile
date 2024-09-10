FROM node:16

# Create app directory
WORKDIR /usr/src/app

COPY packages*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY . .

EXPOSE 8080

CMD ["nde", "index.js"]
