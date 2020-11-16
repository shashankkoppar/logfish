FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install -g @angular/cli serve &&\
    npm install &&\
    ng build --prod
WORKDIR /app/dist/logfish
ENTRYPOINT ["/app/scripts/docker-entrypoint.sh"]
