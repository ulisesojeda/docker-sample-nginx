sudo docker build -t nh_33 .
sudo docker kill `cat docker.cid`
sudo rm docker.cid
sudo docker run --cidfile docker.cid -p 8080:80 -d nh_33
echo $?