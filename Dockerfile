FROM nginx
MAINTAINER Ke, Mingze <mingze.ke@gmail.com>

ADD proxy proxy
ADD docker-gen-linux-amd64-0.3.5.tar.gz proxy/bin/

ENV PATH /proxy/bin:$PATH

CMD ["/bin/bash", "/proxy/init.sh"]
