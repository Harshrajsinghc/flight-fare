#FROM python:3.9-alpine
#COPY requirements.txt requirements.txt
#WORKDIR ./app
#RUN pip freeze > requirements.txt
#EXPOSE $PORT
#CMD app:app

# Use an official Python runtime as a parent image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Define environment variable
ENV indore

# Run app.py when the container launches
CMD ["python", "app.py"]

