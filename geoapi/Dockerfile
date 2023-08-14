# Use a Python base image
FROM python:3.9

# Set the working directory
WORKDIR /geoapi

# Install Git
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository
RUN git clone https://github.com/leantroca/geoapi .

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/share/pypoetry/venv/bin:$PATH"

# Install API dependencies using Poetry
RUN poetry install

# Expose the API port
EXPOSE 5000

# Start the API
ENTRYPOINT ["/geoapi/startup.sh"]

