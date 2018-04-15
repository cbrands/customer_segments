#stop all continers
docker kill $(docker ps -q)

#remove old images
docker system prune -f

docker build -t customer-segments-app .

docker run -it -p 8888:8888 customer-segments-app
