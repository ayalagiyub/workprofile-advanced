# FROM python:3.9-slim
# # ספריות מערכתיות נדרשות ל־C extensions
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     build-essential \
#     default-libmysqlclient-dev \
#     libpq-dev \
#     netcat-openbsd \
#  && rm -rf /var/lib/apt/lists/*

# WORKDIR /app

# COPY requirements.txt ./

# # עדכון pip ו־install
# RUN python -m pip install --upgrade pip setuptools wheel
# RUN pip install --no-cache-dir -r requirements.txt

# COPY src/ /app/

# ENV PYTHONUNBUFFERED=1 PORT=5000
# EXPOSE 5000

# # CMD מותאם לבדיקה
# CMD ["python","app.py"]

# Base image

FROM python:3.9-slim

# התקנת תלות מערכתית בשביל mysqlclient ו-psycopg2
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    build-essential \
    pkg-config \
    default-libmysqlclient-dev \
    libpq-dev \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt ./
RUN python -m pip install --upgrade pip setuptools wheel \
 && pip install --no-cache-dir -r requirements.txt

COPY src/ /app/

ENV PYTHONUNBUFFERED=1 PORT=5000
EXPOSE 5000

CMD ["python","app.py"]
       
