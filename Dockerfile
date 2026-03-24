# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local directory contents into the container at /app
COPY . /app

# Install python packages
RUN pip install -r /app/requirements.txt
ENTRYPOINT ["python"]
CMD ["main.py"]
