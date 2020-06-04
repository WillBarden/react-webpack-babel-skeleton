FROM node:12

WORKDIR /app
COPY . .

RUN npm install
RUN npm install -g serve

EXPOSE 8080
CMD ["npm", "run", "build"]
WORKDIR /app/public
CMD ["serve", "-p", "8080", "."]
