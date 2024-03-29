# Use the official Python image as the base image
FROM python:3.8-slim
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the Python script into the container at /app
COPY app.py .
 
# Install Flask
RUN pip install Flask
 
# Expose port 80 to the outside world.
EXPOSE 80
 
# Run the Python script when the container launches
CMD ["python", "app.py"]
