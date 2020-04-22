FROM python:3.8.2

RUN apt-get update
RUN mkdir /src
COPY src /src
WORKDIR /src
RUN pip install -r requirements.txt
RUN pip install jupyterlab

EXPOSE 5000
EXPOSE 8080
CMD ["python3", "app.py"]