FROM python:3.10

RUN apt update && apt install -y ffmpeg nodejs npm

WORKDIR /app

COPY . .

RUN pip install -r backend/requirements.txt
RUN pip install uvicorn

CMD bash start.sh
