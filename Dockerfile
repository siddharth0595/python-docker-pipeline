FROM ubuntu:18.04
CMD  sudo apt install python3-pip
WORKDIR /home/ubuntu
COPY  . .
RUN python3 -V
RUN python3 cp.py
RUN python3 test.py
EXPOSE 8005
