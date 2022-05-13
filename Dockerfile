# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

RUN pip3 install beautifulsoup4
RUN pip3 install lxml
RUN pip3 install pandas
RUN pip3 install requests

COPY . .

CMD [ "python3", "scrape-kijiji.py"]