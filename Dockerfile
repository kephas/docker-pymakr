FROM debian:stable

RUN apt update && apt install -y python-qscintilla2 python-pygments python-serial
COPY pymakr_1.0.0.b8-1_all.deb /root
RUN dpkg -i /root/pymakr*.deb