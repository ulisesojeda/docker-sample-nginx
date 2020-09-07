sudo docker build -t ng_p1 .
sudo docker kill `cat docker.cid`
sudo rm docker.cid
sudo docker run --cidfile docker.cid -p 8080:80 -d ng_p1
echo $?
