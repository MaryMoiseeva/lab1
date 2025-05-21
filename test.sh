#!/bin/bash

echo "Running tests..."

# Пример: проверка, что сервер запускается
python3 -m http.server 8000 &
SERVER_PID=$!

# Пауза для запуска сервера
sleep 2

# Проверка, что сервер отвечает
curl -s http://localhost:8000 > /dev/null

if [ $? -eq 0 ]; then
    echo "✅ Test passed: server responded"
    kill $SERVER_PID
    exit 0
else
    echo "❌ Test failed: server not responding"
    kill $SERVER_PID
    exit 1
fi
