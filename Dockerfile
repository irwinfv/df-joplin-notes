FROM docker.io/library/debian
RUN apt-get update -y && apt-get install -y nodejs npm git vim
RUN useradd notes -m
RUN su - notes -c "NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin" \
                   && ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin
