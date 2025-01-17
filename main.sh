docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD

# build eosio-cdt.181 base image
# docker build -t linkinghack/eos-cdt-1.8.1-base:ubuntu18.04 -f ./dockerfiles/eos-cdt.181.base.Dockerfile ./context;
# docker push linkinghack/eos-cdt-1.8.1-base:ubuntu18.04;

# build cloud ide images
docker buildx build --platform linux/arm64,linux/amd64 -t linkinghack/go-code-server:go1.18-code4.2.0-v1 -f ./dockerfiles/cloud-ide/go.Dockerfile ./dockerfiles/cloud-ide --push;
docker buildx build --platform linux/arm64,linux/amd64 -t linkinghack/java-code-server:java8-11-18-code4.2.0-v1 -f ./dockerfiles/cloud-ide/java.Dockerfile ./dockerfiles/cloud-ide --push;
