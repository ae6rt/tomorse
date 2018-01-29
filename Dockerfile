FROM centos:7

RUN yum install -y gcc make git && yum clean all
RUN mkdir sndfile && cd sndfile && curl -o - http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.28.tar.gz | tar -zxf - && cd lib* && ./configure && make install
RUN git clone https://github.com/mathuin/tomorse.git
RUN cd tomorse && gcc -lm -lsndfile -o tomorse tomorse.c

COPY Dockerfile /
