#!/bin/bash
docker build --no-cache -t testnodejs .
docker run --name testnodejs -d -p 5001:5001 testnodejs
echo "localhost:5001 serving your environment"
echo "to kill, run docker kill testnodejs"
