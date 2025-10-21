FROM python:slim-bookworm
COPY requirements.txt /
WORKDIR /
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["gunicorn", "app.wsgi:application", "--bind", "0.0.0.0:8000"]
