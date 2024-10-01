FROM python:3.10
EXPOSE 5300
WORKDIR /app

RUN apt update
RUN apt upgrade

RUN apt install git

RUN git clone https://github.com/netrix4/DockerContainerizedApp.git

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5300"]