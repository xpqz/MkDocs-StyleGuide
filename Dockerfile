FROM python:3.11-slim

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git

# Copy the requirements.txt file into the Docker image
COPY requirements.txt .

# Install Python dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Set the working directory (optional)
WORKDIR /docs

# Expose port 8000 for serving documentation
EXPOSE 8000

# Set ENTRYPOINT to 'mike' to allow passing arguments at runtime
ENTRYPOINT ["mike"]

# Default CMD as fallback if no arguments are passed
CMD ["--help"]
