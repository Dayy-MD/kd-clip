FROM python:3.10

RUN apt update && apt install -y unzip ffmpeg nodejs npm

WORKDIR /app
COPY . .

RUN unzip supoclip-main.zip

WORKDIR /app/supoclip-main

RUN pip install -r backend/requirements.txt

CMD ["bash","start.sh"]
