FROM node:18-alpine
WORKDIR /app
COPY package.json ./
COPY . .
ENTRYPOINT ["npm"]
CMD ["start"]
EXPOSE 3000