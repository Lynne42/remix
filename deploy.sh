docker build -t remix-demo . 
docker tag remix-demo qlniu/remix-demo:latest
docker tag remix-demo qlniu/remix-demo:v1.0.0
docker push qlniu/remix-demo:latest
docker push qlniu/remix-demo:v1.0.0