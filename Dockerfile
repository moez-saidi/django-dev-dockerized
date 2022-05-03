FROM python:3.9-slim-buster
# Create & change to this directory
WORKDIR /code
# Copy requirements.txt firt because they change less frequently to 
# optimize build with cached layer
COPY ./requirements.txt .
# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt
# Copy project content
COPY . .