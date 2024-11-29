@echo off
echo Changing directory client...
cd "client-store"

echo Building Docker image client...
docker build -t storepd322-client .

echo Docker login...
docker login

echo Tagging Docker image client...
docker tag storepd322-client:latest novakvova/storepd322-client:latest

echo Pushing Docker image client to repository...
docker push novakvova/storepd322-client:latest

echo Done ---client---!

echo Changing directory api...
cd ".."
cd "ApiStore"

echo Building Docker image api...
docker build -t pd322-asp-api . 

echo Tagging Docker image api...
docker tag pd322-asp-api:latest novakvova/pd322-asp-api:latest

echo Pushing Docker image api to repository...
docker push novakvova/pd322-asp-api:latest

echo Done ---api---!
pause

