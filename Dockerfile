# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8
# WORKDIR /app
# COPY main.py .



# https://fastapi.tiangolo.com/deployment/docker/
# FROM python:3.9
FROM python:alpine3.19

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./main.py /app/main.py

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

# If running behind a proxy like Nginx or Traefik add --proxy-headers
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--proxy-headers"]