build_deps:
  {% if grains['os_family'] == 'RedHat' %}
    pkgs:
      - gcc
      - ncurses-devel
      - readline-devel
      - openssl-devel
      - bzip2-devel
      - pcre-devel
      - zlib-devel
      - make
      - wget
  {% endif %}
  {% if grains['os_family'] == 'Debian' %}
    pkgs:
      - gcc
      - libncurses5-dev
      - libreadline-dev
      - libgtk2.0-dev
      - libssl-dev
      - libx11-dev
      - libbz2-dev
      - libpcre3-dev
      - libXpm-dev
      - libjpeg-dev 
      - libgif-dev 
      - libtiff-dev
      - zlib1g-dev
      - make
      - autoconf
      - wget
  {% endif %}
user_vars:
  home_dir:
  {% if grains['os'] == 'MacOS' %}
    /Users
  {% else %}
    /home
  {% endif %}
  {% if grains['os'] == 'MacOS' %}
  zsh_path: /bin/zsh
  {% endif %}
  dotfiles:
    - .zshrc
    - .zshenv
    - .spacemacs
    - .bootstrap-gitconfig
    - .gitconfig
  zsh_plugins:
    zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
    zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
  spacemacs: https://github.com/syl20bnr/spacemacs
  fzf: https://github.com/junegunn/fzf
  rbenv: https://github.com/rbenv/rbenv
  nvm: https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh
  pyenv: https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer
