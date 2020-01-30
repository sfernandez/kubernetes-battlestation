###Volumes needed
A volume from your `~/.aws` to `/root/.aws`.

A volume from your kubernetes config files directory.

`docker run -it -v ~/.aws:/root/.aws -v <WORKING_DIRECTORY>:/root/workdir/ apiumhub/kubernetes-battlestation:latest bash`
