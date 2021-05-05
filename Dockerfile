#Dockerfile to build my first container image. It is just for get familiar with containers.

FROM python:3.8

#This is not the directory of our windows/linux system. This is the working directory of our Docker virtual env, 
#this is where our container is going to be. It is pretty common to use this paht.
WORKDIR /usr/src/python_art 

#COPY source_path destination_path --> I think that if I say "." as destination_path,
#then main will be located in the workdir I previously specified.
COPY main.py . 
COPY requirements.txt . 


#In requirements.txt I have all the libraries I need in order to execute this code (actually here I only need art).
RUN pip install -r requirements.txt
				
# this is simply running "python ./main.py" in our container terminal
ENTRYPOINT ["python", "./main.py"]