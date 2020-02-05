###Volumes needed
A volume from your `~/.aws` to `/root/.aws`.
A volume from your `~/.ssh` to `/root/.ssh`.
A volume from your kubernetes config files directory.

`docker run -it -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -v <WORKING_DIRECTORY>:/root/workdir/ apiumhub/kubernetes-battlestation:latest bash`

Remember that in case that you `port-forward` any port inside the container, you should expose that port to your host via -p <EXTERNAL_PORT>:<INTERNAL_PORT>
