#!/bin/bash
docker build --no-cache -t testnodejs .
docker run -p 5001:5001 testnodejs
echo "localhost:5001 serving your environment"
