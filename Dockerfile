FROM python:3.12.11-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt-get update -y && apt-get install -y awscli

RUN pip install --no-cache-dir -r requirement.txt

EXPOSE 80

CMD ["python3", "application.py"]