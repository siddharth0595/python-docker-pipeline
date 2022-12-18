FROM ubuntu:18.04
CMD  sudo apt install python3-pip
WORKDIR /home/ubuntu
COPY  /home/ubuntu/test.py /home/ubuntu/test.py
COPY  /home/ubuntu/cp.py /home/ubuntu/cp.py 

EXPOSE 8005
