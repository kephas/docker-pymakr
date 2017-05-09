FROM debian:stable

RUN apt update && apt install -y python-qscintilla2 python-pygments python-serial sudo
COPY pymakr*.deb /root
RUN dpkg -i /root/pymakr*.deb
CMD sudo -u $USER QT_X11_NO_MITSHM=1 pymakr