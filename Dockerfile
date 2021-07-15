FROM node:alpine
WORKDIR "/app"
ARG URL
ARG PORT
COPY ./package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]

