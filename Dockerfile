FROM python:3.10

WORKDIR /src

ADD ./ /src

RUN pip install --upgrade pip
RUN pip install poetry
RUN poetry install

EXPOSE 8000 

CMD ["poetry","run","uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]