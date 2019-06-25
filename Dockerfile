FROM ubuntu:18.04



RUN apt-get update; apt-get install -y curl; apt-get install -y bash

RUN  curl https://api.bintray.com/content/jfrog/jfrog-cli-go/\$latest/jfrog-cli-linux-amd64/jfrog?bt_package=jfrog-cli-linux-amd64 -o /bin/jfrog
RUN chmod 777 /bin/jfrog

ENV JFROG_CLI_LOG_LEVEL debug
ENTRYPOINT ["/bin/bash", "-c", "echo Hello, $name"]
