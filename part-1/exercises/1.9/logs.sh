touch logs.txt; docker run -v "$(pwd)/logs.txt:/usr/src/app/text.log" --name vol devopsdockeruh/simple-web-service 