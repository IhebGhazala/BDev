FROM python:3.9-alpine

# set work directory
WORKDIR /usr/src/app

# copy requirements file
COPY requirements.txt ./

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy app code
COPY . .

# expose port
EXPOSE 8000

# run the command to start the app
CMD ["python", "app.py"]

