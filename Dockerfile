FROM rockylinux/rockylinux:latest


RUN dnf update -y && \
    dnf install -y epel-release && \
    dnf clean all && \
    dnf install -y \
        wget \
        git \
        pigz 
RUN dnf install -y gcc-c++ 
RUN dnf install -y gcc
RUN dnf install -y make 

WORKDIR /opt
RUN git clone https://github.com/sfu-compbio/scalce.git


WORKDIR /opt/scalce

# correct the version of zlib available
RUN sed -i 's/ZLIB_VER=1\.2\.11/ZLIB_VER=1.2.13/g' Makefile

# make the program
RUN make download 
RUN make
RUN ln -s /opt/scalce/scalce /bin/scalce

# test the install
RUN scalce --version



ENTRYPOINT [ "scalce" ]