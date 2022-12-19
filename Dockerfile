FROM ubuntu:18.04
CMD  sudo apt install python3-pip
WORKDIR /home/ubuntu
COPY  . .
RUN sh python cp.py
RUN sh python test.py
EXPOSE 8005
