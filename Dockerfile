FROM nginx:alpine
# Expose port 80
EXPOSE 80
COPY html/. /usr/share/nginx/html