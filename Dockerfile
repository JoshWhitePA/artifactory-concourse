FROM busybox



RUN apt-get update; apt-get install curl

RUN  curl https://api.bintray.com/content/jfrog/jfrog-cli-go/$latest/jfrog-cli-linux-386/jfrog?bt_package=jfrog-cli-linux-386 -o /bin/jfrog
run chmod 777 /bin/jfrog
