FROM python:3.12-slim
# It means make a lightweight linux system inside our system where python 3.12 will be installed

WORKDIR /app 
# It means create a working directory inside that container which is made inside that lightweight linux system where 3.12 version of python is installed

COPY . /app
# Copy everything from current directory to that working directory made inside container with the name of app.

RUN apt update -y && apt install awscli -y

RUN pip install --no-cache-dir -r requirements.txt
# It means install requirements.txt file where there are many modules used to run our project. They all would be running.

CMD ["python3", "application.py"]
# It means when container runs, run application.py. python3 is just a command to run python on linux systems as our docker image uses linux base image, it means run python file application.py