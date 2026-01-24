# Use an official Python runtime as base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application
COPY . .

# Command to run with 'docker run' command
CMD ["python", "your_main_script.py"]
