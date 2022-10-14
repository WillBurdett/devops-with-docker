<exercise name="Exercise 1.1: Getting started">

  Since we already did "Hello, World!" in the material let's do something else.

  Start 3 containers from image that does not automatically exit, such as nginx, detached.

  Stop 2 of the containers leaving 1 up.

  Submit the output for `docker ps -a` which shows 2 stopped containers and one running.

</exercise>

`solution`
$ docker run redis
$ docker run nginx
$ docker container ps
$ docker stop 3d6b01208c6f 52536e7108fd
$ docker container rm 3d6b01208c6f 52536e7108fd



