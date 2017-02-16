FROM python:3.5.3

RUN apt-get update
RUN mkdir /src
COPY src /src
WORKDIR /src
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python3", "app.py"]