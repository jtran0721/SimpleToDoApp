#Buid environment 

FROM node:15.13-alpine as build

WORKDIR /app

COPY /todoapp-v1.0/. .
EXPOSE 3000
CMD ["yarn", "run", "build"]

# Move files to production
FROM nginx:1.21.3-alpine 
WORKDIR /app 
COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl -f http://localhost:80 || exit 1" ]

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

