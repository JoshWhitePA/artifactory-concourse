FROM ubuntu:18.04



RUN apt-get update; apt-get install -y curl; apt-get install -y bash; apt-get install -y jq;


RUN cd /bin; curl -fL https://getcli.jfrog.io | sh;
RUN chmod 777 /bin/jfrog

RUN curl -fL -k https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64

RUN apt-get install jq;

ENV JFROG_CLI_LOG_LEVEL debug
ENTRYPOINT ["/bin/bash", "-c", "echo Hello, $name"]
