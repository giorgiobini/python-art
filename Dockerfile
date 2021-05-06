#Dockerfile to build my first container image. It is based on matthewfeickert/docker-python3-ubuntu:3.8.7 container.

FROM matthewfeickert/docker-python3-ubuntu:3.8.7

#The path /home/docker was created by matthewfeickert in its ubuntu container
WORKDIR /home/docker
RUN mkdir python_art

WORKDIR /home/docker/python_art
#COPY source_path destination_path --> I think that if I say "." as destination_path, then main will be located in the workdir I previously specified.
COPY main.py . 
COPY requirements.txt . 
COPY run.sh .

#if I don't run this, then run.sh will return "Permission denied" on bash
RUN chmod +x run.sh

#In requirements.txt I have all the libraries I need in order to execute this code (actually here I only need art).
RUN pip install -r requirements.txt