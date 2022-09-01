FROM python:3.9-alpine

ENV TZ=America/Sao_Paulo

WORKDIR /app

RUN apk add --no-cache --virtual build-dependencies libpq-dev build-base

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh"]
