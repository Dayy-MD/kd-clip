#!/bin/bash

cd backend

pip install -r requirements.txt
pip install uvicorn

python -m uvicorn src.main:app --host 0.0.0.0 --port $PORT
