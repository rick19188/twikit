# Use a lightweight Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /usr/src/app

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all actor files
COPY . ./

# Run your Python entry point
# CMD ["python", "twikit/client/client.py"]
CMD ["python", "-m", "twikit.client.client"]
