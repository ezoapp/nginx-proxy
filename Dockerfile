FROM nginx
MAINTAINER Ke, Mingze <mingze.ke@gmail.com>

ADD proxy proxy
ADD docker-gen-linux-amd64-0.3.8.tar.gz /proxy/bin/
ADD nginx.conf /etc/nginx/nginx.conf

ENV PATH /proxy/bin:$PATH

EXPOSE 80 443

CMD ["/proxy/init.sh"]
