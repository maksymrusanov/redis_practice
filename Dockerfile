FROM python:slim-bookworm
COPY requirements.txt /app/
WORKDIR /app
RUN apt-get update && apt-get install -y python3 pip
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "python","python manage.py runserver" ]