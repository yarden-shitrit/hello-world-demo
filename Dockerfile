FROM python:latest

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get -y install sudo

COPY . .

WORKDIR /Desktop/app

RUN pip install Flask==1.0.2

EXPOSE 5000

CMD ["python","hello_world.py"]
