sudo docker build -t mynginx .
sudo docker kill `cat docker.cid`
sudo docker run --cidfile docker.cid -p 8080:80 -d mynginx
