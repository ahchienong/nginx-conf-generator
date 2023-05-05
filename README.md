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

----

## TODO

    [x] 🚧 Feature: Add maintenance mode into template
    
    [x] 🚧 Feature: Add simple scripts to toggle maintenance mode
    
    [ ] 🚧 Feature: Enhance toggle maintenance mode scripts & template to target specific site/domain/subdomain
    
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

----

##### ❤️ Inspired by <a href="https://www.digitalocean.com/community/questions/configure-nginx-for-multiple-subdomains?comment=51943">configure nginx for multiple subdomains</a>

----


[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/ahchienong)

<a href="https://www.paypal.me/ahchienong" target="_blank"><img src="https://www.paypalobjects.com/digitalassets/c/website/logo/full-text/pp_fc_hl.svg"/></a>
