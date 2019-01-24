# microspring

Create image with: mvn package

Start container:
docker stop cz-flits
docker rm cz-flits
docker run -d --name cz-flits -p 8080:8080  -v c:/temp/config2:/opt/cz/flits/config/ cz/microspring:microspring-0.0.1-SNAPSHOT