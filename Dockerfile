FROM centos
RUN yum -y install nginx
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
