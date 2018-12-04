FROM rykerrumsey/vim-base:v1.0

# Vim plugins deps
RUN apk --no-cache add curl \
    sudo \
    shadow \
    && apk --update add \
    bash \
    ctags \
    curl \
    git \
    ncurses-terminfo \
    python \
    && apk add --virtual build-deps \
    build-base \
    cmake \
    llvm \
    perl \
    python-dev

# NodeJS Packages
RUN npm i -g eslint \
  babel-eslint \
  eslint-plugin-react \
  prettier \
  eslint-config-prettier \
  eslint-plugin-prettier

ENV USER_NAME='anonymous'

RUN useradd -ms /bin/bash $USER_NAME

USER $USER_NAME
WORKDIR /home/$USER_NAME

# Vim wrapper
COPY run /usr/local/bin/

COPY .vimrc /home/$USER_NAME/.vimrc

RUN curl -fLo ./.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN ["vim", "+PlugInstall", "+qall"]

ENV TERM=xterm-256color

ENTRYPOINT ["sh", "/usr/local/bin/run"]
