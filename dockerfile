FROM nginx:1.25.3
RUN rm -rf /usr/share/nginx/html/*
COPY html/ /usr/share/nginx/html/
RUN date -u > /usr/share/nginx/html/buildtime.txt
