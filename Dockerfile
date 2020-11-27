#Dockerfile，采用centos7作为标准镜像，不用nginx标准镜像原因是因为那样启动的容器是mina版的linux，太简单
#FROM centos:centos7
##MAINTAINER 维护者信息
#MAINTAINER mm
#ADD nginx/nginx.repo /etc/yum.repos.d/
##RUN 执行以下命令
#RUN yum install -y nginx
#RUN rm -rf /usr/share/nginx/html/static
#COPY dist/ /usr/share/nginx/html/
#RUN rm /etc/nginx/conf.d/default.conf
#ADD ./nginx/default.conf /etc/nginx/conf.d/
##EXPOSE 映射端口
#EXPOSE 80
##CMD 运行以下命令，daemon off后台运行，否则启动完就自动关闭
#CMD ["/usr/sbin/nginx", "-g","daemon off;"]


#Dockerfile，采用centos7作为标准镜像，不用nginx标准镜像原因是因为那样启动的容器是mina版的linux，太简单
#FROM centos:centos7
#MAINTAINER mm
#ADD ./nginx/nginx-1.15.3.tar.gz .
#RUN yum install -y pcre-devel wget net-tools gcc zlib zlib-devel make openssl-devel
#RUN tar -zxvf nginx-1.15.3.tar.gz
#RUN mkdir -p /usr/local/nginx
#RUN cd nginx-1.15.3 && ./configure && make && make install
#RUN ln -s /usr/local/nginx/sbin/* /usr/local/sbin/
#RUN rm /usr/local/nginx/html/*
#COPY dist/ /usr/local/nginx/html/
#RUN rm /usr/local/nginx/conf.d/default.conf
#ADD ./nginx/default.conf /usr/local/nginx/conf.d/
#EXPOSE 80
#CMD ["nginx"]

FROM nginx:latest
MAINTAINER mm
RUN rm /usr/share/nginx/html/*
COPY dist/ /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/default.conf
ADD ./nginx/default.conf /etc/nginx/conf.d/
EXPOSE 80
