FROM python:3.10.8-alpine
RUN pip install pipenv
WORKDIR /app
COPY Pipfile .
COPY Pipfile.lock .
RUN pipenv install --system
