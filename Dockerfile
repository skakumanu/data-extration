FROM ubuntu:latest

MAINTAINER Michael Levan

CMD tail -f /dev/null

RUN apt-get update -y && apt-get install -y python3-pip python-dev

EXPOSE 80
EXPOSE 5000

WORKDIR /ExtractAPI

RUN pip3 install pandas
RUN pip3 install requests
RUN pip3 install notebook


COPY . /ExtractAPI

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
