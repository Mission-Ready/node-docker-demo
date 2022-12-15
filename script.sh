docker build . -t sebinbenjamin/node-web-app:v1
# docker image tag sebinbenjamin/node-web-app:v2 sebinbenjamin/node-web-app:v2 
# docker image push sebinbenjamin/node-web-app:v2

# docker images
# docker run -p 8080:8080 -d <your username>/node-web-app
# docker run -p 8080:8080 sebinbenjamin/node-web-app:v2
# docker ps
# docker logs <container id>
# docker exec -it <container id> /bin/bash