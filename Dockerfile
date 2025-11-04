FROM python:3.10-slim

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy your actor code
COPY . ./

# Set working directory
WORKDIR /usr/src/app

# Run your Python entry point
CMD ["python", "your_script.py"]
