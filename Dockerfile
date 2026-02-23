# Use Python 3.9 slim image (smaller size)
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file first (for better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script
COPY process_data.py .

# Run the script when container starts
CMD ["python", "process_data.py"]