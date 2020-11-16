FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install -g serve &&\
    npm install
    ng build --prod
WORKDIR /app/dist/logfish
ENTRYPOINT ["/app/scripts/docker-entrypoint.sh"]
