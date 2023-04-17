FROM rockylinux/rockylinux:latest

RUN dnf update
RUN dnf install git

RUN git clone https://github.com/sfu-compbio/scalce.git binary

ENTRYPOINT [ "scalce" ]