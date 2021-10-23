#Buid environment 

FROM node:15.13-alpine as build

WORKDIR /app

COPY /todoapp-v1.0/. .

CMD ["yarn", "run", "build"]

# Move files to production
FROM nginx:1.21.3-alpine 

COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

