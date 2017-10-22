# Use an official Python runtime as a parent image
FROM python:3.6-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

# Build with name
# docker build -t datascience .
#
# View images
# docker images
#
# Run the image in detach mode
# docker run -d -p 4000:80 datascience
#
# View Image ID
# docker ps
# docker container ls
#
# Enter the running docker container
# docker exec -it [container-id] bash