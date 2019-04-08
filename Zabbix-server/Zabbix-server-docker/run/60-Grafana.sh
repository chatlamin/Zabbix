ID=$(id -u)

docker run --name grafana \
  --detach \
  --user $ID \
  --volume /home/docker/containers/grafana/var/lib/grafana:/var/lib/grafana \
  --publish 3000:3000 \
  grafana/grafana