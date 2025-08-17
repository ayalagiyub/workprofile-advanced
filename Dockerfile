FROM python:3.9-slim

RUN apt-get update && apt-get install -y --no-install-recommends netcat-openbsd && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ /app/

ENV PYTHONUNBUFFERED=1 PORT=5000
EXPOSE 5000

# CMD ["gunicorn","-b","0.0.0.0:5000","app:app"]
CMD ["python","app.py"]
