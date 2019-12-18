# nginx-conf-generator

## Usage

1. Download `generate_nginx_conf.sh` to server workspace.

    > `cd <DESIRE WORKSPACE>`

    > `wget https://raw.githubusercontent.com/ahchienong/nginx-conf-generator/master/generate_nginx_conf.sh`

2. Download `template.conf-template` to server - located at `/etc/nginx/conf.d/template.conf-template`.

    > `cd /etc/nginx/conf.d/`

    > `wget https://raw.githubusercontent.com/ahchienong/nginx-conf-generator/master/template.conf-template`

    2.1 Run without Upstream Path with sub-directory

    > `./generate_nginx_conf.sh <UPSTREAM_NAME> <UPSTREAM_IP_PORT> <SERVERNAME>`

## TODO

    [ ] 🚧 2.2 Run with Upstream Path with sub-directory _**[WIP]**_
    
    > `./generate_nginx_conf.sh <UPSTREAM_NAME> <UPSTREAM_IP_PORT> <SERVERNAME> <UPSTREAM_PATH>`

    [ ] 🚧 ask to run certbot command to generate letsencrypt SSL Cert.

    [ ] 🚧 create auto renew letsencrypt SSL Cert via certbot.

----

_Assumptions & Tested on_

> Location of Template : `/etc/nginx/conf.d/template.conf-template`

> Location of Nginx : `/etc/nginx`

> Linux Distribution : `CentOS 7.x`

> Nginx Service : `systemctl status nginx`