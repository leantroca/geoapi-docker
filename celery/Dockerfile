# # Use a Python base image
# FROM python:3.9
# 
# # Set the working directory
# WORKDIR /celery
# 
# # Install Git
# RUN apt-get update && apt-get install -y git
# 
# # Clone the GitHub repository
# RUN git clone -b feature/v1.1.0/include-styles https://github.com/leantroca/geoapi .
# 
# # Install Poetry
# RUN curl -sSL https://install.python-poetry.org | python -
# ENV PATH="/root/.local/share/pypoetry/venv/bin:$PATH"
# 
# # Install API dependencies using Poetry
# #COPY /home/bridge/Documents/MINISTERIO/DEV/geoapi/pyproject.toml /celery/pyproject.toml
# #COPY /home/bridge/Documents/MINISTERIO/DEV/geoapi/poetry.lock /celery/poetry.lock
# RUN poetry install

FROM geoapi-docker-poetry-env

WORKDIR /src

COPY ./settings/startup.sh /src/startup-celery.sh
RUN chmod +x /src/startup-celery.sh

CMD ["/src/startup-celery.sh"]
