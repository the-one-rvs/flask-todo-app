FROM ubuntu

RUN apt update
RUN apt install python3-pip -y
RUN pip3 install flask
RUN pip3 install flask-sqlalchemy

WORKDIR /app

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]