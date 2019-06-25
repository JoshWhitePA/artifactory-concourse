FROM ubuntu:18.04



RUN apt-get update; apt-get install -y curl; apt-get install -y bash

RUN  curl https://api.bintray.com/content/jfrog/jfrog-cli-go/$latest/jfrog-cli-linux-386/jfrog?bt_package=jfrog-cli-linux-386 -o /bin/jfrog
run chmod 777 /bin/jfrog

ENV name John Dow
ENTRYPOINT ["/bin/bash", "-c", "echo Hello, $name"]
