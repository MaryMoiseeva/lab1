#!/bin/bash

echo "🚀 Deploying application..."

cd /home/youruser/yourproject || exit

# Обновление проекта
git pull origin main

# (опционально) Перезапуск сервиса или сервера
# Например, если ты запускаешь Python-сервер:
pkill -f "python3 -m http.server"
nohup python3 -m http.server 8000 > server.log 2>&1 &

echo "✅ Deployment finished"
