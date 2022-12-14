# Set up a python environment
FROM python:3.10
# create a folder "app" 
RUN mkdir /app
# copy all of the  files in ths directory in app
COPY . /app
# set app as cwd
WORKDIR /app
# update pip
RUN pip install --upgrade pip
# install all the requirements
RUN pip install -r requirements.txt
# run the API
CMD uvicorn app:app --host 0.0.0.0 
