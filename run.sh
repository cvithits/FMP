#/bin/sh
#sudo chown -R 10000:10000 ~/.aws
chown -R 10000:10000 ./
docker-compose up && docker-compose rm -fsv
