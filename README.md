# dind-powershell
docker in docker plus powershell 💪🐚

To share state between host docker and the dind docker run it like this.

`docker run -it -v /var/run/docker.sock:/var/run/docker.sock dind-powershell`