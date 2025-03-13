# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the application code
COPY ./app .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on (if applicable)
EXPOSE 5000

# Define environment variables (optional)
ENV PYTHONUNBUFFERED=1

# Command to run the application
CMD ["python", "app.py"]