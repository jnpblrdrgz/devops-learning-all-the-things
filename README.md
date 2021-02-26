# How to Build

# Building and Running A Local Jenkins With Docker
For tutorial purposes we will be building off the official Jenkins LTS container and adding Docker so we dont have to add build nodes and it can keep everything self-contained.

#### Note that this mounts the hosts docker socket into the container which is a big security flaw. 
#### It also runs the Jenkins container as root instead of the Jenkins user which is another security issue.
```
docker build -t jenkins_with_docker -f Dockerfile_jenkins .
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins_with_docker 
```
