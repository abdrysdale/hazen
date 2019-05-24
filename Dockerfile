FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
RUN sudo apt-get install rabbitmq-server
COPY app.py /src
COPY hazen /src/hazen
CMD python /src/app.py