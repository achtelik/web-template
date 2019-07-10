##Guides
* https://spring.io/blog/2018/11/08/spring-boot-in-a-container
* https://blog.codecentric.de/2018/07/docker-images-google-jib-kaniko/
* https://jaxenter.de/10-wege-docker-images-zu-bauen-5-jib-72993
* https://www.baeldung.com/jib-dockerizing
* https://spring.io/guides/gs/spring-boot-docker/

##Execute mvn-wrapper with specific java version
```JAVA_HOME=/Volumes/Workspace/tools/jdk-12.0.1.jdk/Contents/Home bash mvnw clean install```

* Spotify: ```JAVA_HOME=/Volumes/Workspace/tools/jdk-11.0.2.jdk/Contents/Home bash mvnw com.spotify:dockerfile-maven-plugin:build```
* Google Jib at Dockerhub: ```JAVA_HOME=/Volumes/Workspace/tools/jdk-11.0.2.jdk/Contents/Home bash mvnw com.google.cloud.tools:jib-maven-plugin:build -Dimage=it.achtelik/web-template```
* Google Jib at local Daemon: ```JAVA_HOME=/Volumes/Workspace/tools/jdk-11.0.2.jdk/Contents/Home bash mvnw com.google.cloud.tools:jib-maven-plugin:dockerBuild -Dimage=it.achtelik/web-template```

```JAVA_HOME=/Volumes/Workspace/tools/jdk-11.0.2.jdk/Contents/Home bash mvnw compile jib:build```

https://hub.docker.com/_/openjdk?tab=description&page=1


##Docker start
* List images: `docker image ls`
* Start image `docker run -p 8080:8080 <IMAGE ID>`
* Show running containers `docker ps`
