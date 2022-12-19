FROM ubuntu:18.04
CMD  sudo apt install python3-pip
WORKDIR /home/ubuntu
COPY  . .
RUN sudo python cp.py
RUN sudo python test.py
EXPOSE 8005
