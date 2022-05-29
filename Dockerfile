#Buid environment 

FROM node:18-alpine as build

WORKDIR /app

COPY . .
RUN yarn
RUN yarn build

# Move files to production
FROM nginx:1.21.6-alpine 

COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl -f http://localhost:80 || exit 1" ]

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

