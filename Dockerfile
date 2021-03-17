FROM debian:9

MAINTAINER Peter Facka <pfacka@spookyowl.com>
RUN apt-get update 
RUN apt-get install -y --no-install-recommends openssh-server

RUN mkdir /root/.ssh
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/CLa9Hb5vct8VOZW2JsxRkBRzmpdWrFBfjM1hmOerS5UTVd1m3ganPRkjcRHGdL6uqGYKZFeRID7aZAyMGYIupdioiklg87gtrfsY+oMncNisfga2riYj9DzjQ0gaH/lUfIr+tdl6WvWAspXpani8Vi3py5i/s0TuXRDcW6c2kNxgO5TZ3yhfF1LcrvTAlV6XKP7jxuapAE/bmf0zu/Z57YnhgDAIO7uwETnUvriiOy3yTPmwx9/Jvr6LAkMBO3kX9NAFzSDYKeVxROluoxZZ6yxTFev+PWvvB+2esRNYKv1Xd9Y6H8MruRwP1la8LdEWLyGCw5qcVXTS9AulzsjD qalt@valibuk" >> /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys
RUN mkdir -p /run/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
