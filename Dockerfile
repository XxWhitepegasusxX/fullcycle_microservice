FROM python:3
ENV PYTHONUNBUFFERED 1
# DEFINIMOS A PASTA DE TRABALHO
RUN mkdir /code
WORKDIR /code
# COPIAMOS OS REQUISITOS PARA O PROJETO
COPY requirements.txt /code
RUN pip install -r requirements.txt
COPY . /code/