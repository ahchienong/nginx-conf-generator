# nginx-conf-generator

## Usage

1. Copy `generate_nginx_conf.sh` to server.
2. Copy `template.conf-template` to server - located at `/etc/nginx/conf.d/template.conf-template`.

    2.1 Run without Upstream Path with sub-directory

    > `./generate_nginx_conf.sh <UPSTREAM_NAME> <UPSTREAM_IP_PORT> <SERVERNAME>`

    2.2 🚧 **WIP** 🚧 Run with Upstream Path with sub-directory
    
    > `./generate_nginx_conf.sh <UPSTREAM_NAME> <UPSTREAM_IP_PORT> <SERVERNAME> <UPSTREAM_PATH>`


----

_Assumptions_

> Location of Template : `/etc/nginx/conf.d/template.conf-template`

> Location of Nginx : `/etc/nginx`_`