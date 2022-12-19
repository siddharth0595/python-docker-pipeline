FROM ubuntu:18.04
CMD sudo apt install python3-pip
WORKDIR /home/ubuntu
COPY  . .
CMD sudo python3 -V
CMD sudo python3 cp.py
CMD sudo python3 test.py
EXPOSE 8005
