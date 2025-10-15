FROM python:3.10-slim

WORKDIR /app

COPY backend/requirements.txt .
RUN pip install -r requirements.txt

# Make sure the app folder is copied to /app/app
COPY backend/app ./app

EXPOSE 5000
CMD ["python", "app/main.py"]
