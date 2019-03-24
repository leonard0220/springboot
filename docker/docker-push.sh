#!/bin/bash
n=$(cat ./docker-image-name)
t=$(cat ./docker-version-tag)
address=$(cat ./docker-registry)

# Docker image tag 하기 with tag number
docker tag ${n}:${t} ${address}/${n}:${t}
# Docker image tag 하기 as latest
docker tag ${n}:${t} ${address}/${n}

# Docker private registry에 push 하기
docker push ${address}/${n}:${t}
docker push ${address}/${n}
