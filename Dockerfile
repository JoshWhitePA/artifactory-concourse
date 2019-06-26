FROM ubuntu:18.04



RUN apt-get update; apt-get install -y curl; apt-get install -y bash; apt-get install -y jq;


RUN cd /bin; curl -fL https://getcli.jfrog.io | sh;
RUN chmod 777 /bin/jfrog

ENV JFROG_CLI_LOG_LEVEL debug
ENTRYPOINT ["/bin/bash", "-c", "echo Hello, $name"]
