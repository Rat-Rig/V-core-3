#!/bin/sh
docker build -t vc3 .
docker run -p 80:8000 -w /app -v $(pwd):/app vc3
