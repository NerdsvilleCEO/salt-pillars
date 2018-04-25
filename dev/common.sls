common:
{% if grains['os'] == 'CentOS' %}
  pkgs:
    - ruby
    - htop
    - strace
    - vim-common
{% endif %}
