FROM ubuntu:18.04
CMD sudo apt install python3-pip
WORKDIR /home/ubuntu
COPY  . .
RUN sudo python3 -V
RUN sudopython3 cp.py
RUN sudo python3 test.py
EXPOSE 8005
