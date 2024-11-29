@echo off
echo Building Docker image...
docker build -t storepd322-client .

echo Tagging Docker image...
docker tag storepd322-client:latest novakvova/storepd322-client:latest

echo Pushing Docker image to repository...
docker push novakvova/storepd322-client:latest

echo Done!
