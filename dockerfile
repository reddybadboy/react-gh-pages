FROM nginx:latest
RUN cd /usr
RUN mkdir share
RUN cd /share
RUN mkdir nginx
RUN cd /nginx
RUN mkdir html
RUN cd -- 
COPY build /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
