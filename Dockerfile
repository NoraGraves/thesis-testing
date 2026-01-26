# Use an official Python runtime as base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install git (and other build tools you might need)
# RUN apt-get update && apt-get install -y \
#     git \
#     && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY ./yoruba-adr/requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m nltk.downloader punkt_tab

# Copy yoruba-adr
COPY ./yoruba-adr ./yoruba-adr

# Copy yoruba-text (but only the thesis part)
COPY ./yoruba-text ./yoruba-text

# cd into yoruba-adr
WORKDIR ./yoruba-adr

# Command to run with 'docker run' command
CMD ["bash", "./yoruba-adr/01_run_training.sh"]
