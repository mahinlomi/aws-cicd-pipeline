#1/bin/bash

aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 124355646485.dkr.ecr.ap-southeast-1.amazonaws.com
docker build -t cicd .
docker tag cicd:latest 124355646485.dkr.ecr.ap-southeast-1.amazonaws.com/cicd:latest
docker push 124355646485.dkr.ecr.ap-southeast-1.amazonaws.com/cicd:latest