# Use a small, official Python base image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependency file first (better layer caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Flask app listens on port 5000
EXPOSE 5000

# Basic healthcheck
HEALTHCHECK --interval=30s --timeout=3s CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:5000/healthz')" || exit 1

# Run the app
CMD ["python", "app.py"]
