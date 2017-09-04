# Use an official Python runtime as a parent image
FROM python:3.5

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Collect our static media.
#RUN python /code/manage.py collectstatic --noinput

# Run app.py when the container launches
CMD ["python3", "manage.py", "runserver", "0.0.0.0:80"]

