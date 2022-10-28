FROM nginx:alpine
COPY ./.nginx/nginx.conf /etc/nginx/nginx.conf

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy from the stahg 1
COPY . /usr/share/nginx/html

EXPOSE 8080
ENTRYPOINT ["nginx", "-g", "daemon off;"]
