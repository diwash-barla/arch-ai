FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY config.yaml .

EXPOSE 4000

# सर्वर स्टार्ट करने की कमांड
CMD ["litellm", "--config", "config.yaml", "--port", "4000"]

