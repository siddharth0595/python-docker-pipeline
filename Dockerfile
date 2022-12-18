FROM ubuntu:18.04
CMD  sudo apt install python3-pip
WORKDIR /home/ubuntu
COPY  ./test.py /home/ubuntu/test.py
COPY  ./cp.py /home/ubuntu/cp.py 

EXPOSE 8005
