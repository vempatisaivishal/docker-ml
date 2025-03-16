FROM python:3.8-slim
#
WORKDIR /app 
#copy all into app directory
copy ./app

#running 
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py

CMD ["flask","run","--host=0.0.0.0"]