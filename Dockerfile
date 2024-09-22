#Base Image
FROM python:3.9

#set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


#declare a working directory
WORKDIR /app

#copy requirements.txt
COPY requirements.txt .


#Install dependancies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#expose port
EXPOSE 8000

#Run application
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]

