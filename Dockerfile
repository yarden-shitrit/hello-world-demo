FROM python:latest

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY . .

WORKDIR /Desktop/app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python","hello_world.py"]
