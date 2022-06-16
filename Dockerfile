# Dowload python from dockerhub
FROM python:3.8.10

# working directory
WORKDIR /code

# Copy the requirement file 
COPY requirements.txt .

#Install the dependencies
RUN pip install -r requirements.txt

# copy the flask app to the work directory
COPY src/ .

#Expose port 8000
Expose 8000

# Call application
CMD ["python", "main.py"]