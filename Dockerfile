FROM alpine
RUN apk add curl sudo
WORKDIR /root
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# RUN curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
# RUN echo "$(cat kubectl.sha256) kubectl" | sha256sum -c
RUN sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl