FROM ubuntu:18.04
CMD  sudo apt install python3-pip
COPY  sudo docker cp ./test.py /home/ubuntu/test.py
COPY  sudo docker cp ./cp.py /home/ubuntu/cp.py 

