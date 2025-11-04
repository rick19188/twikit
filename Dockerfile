FROM apify/actor-python:latest  # Uses Python 3.12+ with Apify SDK preinstalled

# Set working directory and user for security (Apify standard)
WORKDIR /home/myuser
USER myuser

# Copy all repo files into the container
COPY --chown=myuser:myuser . ./

# Install the twikit library itself (via setup.py) and any dependencies
RUN pip install --user .

# If you have a requirements.txt for extra deps, add: RUN pip install --user -r requirements.txt

# Run your main script (replace 'main.py' with your actual entry file, e.g., 'examples/search.py' if using an example)
CMD ["python3", "main.py"]
