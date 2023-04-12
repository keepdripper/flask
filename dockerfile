FROM python:3.8-slim
MAINTAINER kennywarwick
ADD src /app
WORKDIR app
RUN apt update && apt install -y curl
RUN pip install -r requirements.txt
CMD ["python3", "main.py"]
