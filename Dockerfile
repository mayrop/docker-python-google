# Container image that runs your code
FROM python:3

RUN apt-get update

RUN apt-get install -y unzip zip && \
    rm -rf /var/lib/apt/lists/*

# upgrade pip
RUN pip install --upgrade pip

# Set working environment
COPY . /usr/app
WORKDIR /usr/app

# install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
