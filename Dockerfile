FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN sed -i 's/127.0.0.1/0.0.0.0/g' server.py
EXPOSE 8080
CMD ["python", "-u", "server.py"]
