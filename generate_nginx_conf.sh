#!/bin/bash

echo "##############################################"
echo "Script Name: $0 | $# arguments"

if [ "$#" -eq "3" ]; then
        UPSTREAM_NAME=$1
        UPSTREAM_IP_PORT=$2
        SERVERNAME=$3

        echo "##############################################"
        echo "#1 - UPSTREAM_NAME    : $UPSTREAM_NAME"
        echo "#2 - UPSTREAM_IP_PORT : $UPSTREAM_IP_PORT"
        echo "#3 - SERVERNAME       : $SERVERNAME"
        echo "##############################################"

        read -p "OK to proceed? (y,n) [y]" agree
        agree=${agree:-y}
        echo "Selected: $agree"

        if [ "$agree" =  "y" ]; then
                echo "##############################################"
                echo "(1/5) Proceed with create config file."
                cp -v /etc/nginx/conf.d/template.conf-template /etc/nginx/conf.d/$UPSTREAM_NAME.conf
                echo "(2/5) Proceed with replacing UPSTREAM_NAME with $UPSTREAM_NAME"
                sed -i -e 's/TEMPLATE_UPSTREAM_NAME/'$UPSTREAM_NAME'/g' /etc/nginx/conf.d/$UPSTREAM_NAME.conf
                echo "(3/5) Proceed with replacing UPSTREAM_IP_PORT with $UPSTREAM_IP_PORT"
                sed -i -e 's/TEMPLATE_UPSTREAM_IP_PORT/'$UPSTREAM_IP_PORT'/g' /etc/nginx/conf.d/$UPSTREAM_NAME.conf
                echo "(4/5) Proceed with replacing SERVERNAME with $SERVERNAME"
                sed -i -e 's/TEMPLATE_SERVERNAME/'$SERVERNAME'/g' /etc/nginx/conf.d/$UPSTREAM_NAME.conf

                read -p "(5/5) Proceed to restart nginx? (y,n) [y]" restart
                restart=${restart:-y}
                echo "Selected: $restart"

                if [ "$restart" =  "y" ]; then
                        echo "Proceed to restart nginx"
                        echo "##############################################"
                        systemctl restart nginx
                        systemctl status nginx
                else
                        echo "[Done] configuration file : /etc/nginx/conf.d/$UPSTREAM_NAME.conf"
                        echo "Not Proceed with Restart. Please ensure to restart manually for the new configuration to effective."
                fi
        else
                echo "[Abort] Not Proceed with creating configuration file : /etc/nginx/conf.d/$UPSTREAM_NAME.conf"
        fi

elif [ "$#" -eq "4" ]; then
        UPSTREAM_NAME=$1
        UPSTREAM_IP_PORT=$2
        SERVERNAME=$3
        UPSTREAM_PATH=$4

        echo "##############################################"
        echo "#1 - UPSTREAM_NAME    : $UPSTREAM_NAME"
        echo "#2 - UPSTREAM_IP_PORT : $UPSTREAM_IP_PORT"
        echo "#3 - SERVERNAME       : $SERVERNAME"
        echo "#4 - UPSTREAM_PATH    : $UPSTREAM_PATH"
        echo "##############################################"

        read -p "OK to proceed? (y,n) [y]" agree
        agree=${agree:-y}
        echo "Selected: $agree"

        if [ "$agree" =  "y" ]; then
                echo "##############################################"
                echo "(1/5) Proceed with create config file."
                cp -v /etc/nginx/conf.d/template.conf-template /etc/nginx/conf.d/$UPSTREAM_NAME.conf
                echo "(2/5) Proceed with replacing UPSTREAM_NAME with $UPSTREAM_NAME"
                sed -i -e 's/TEMPLATE_UPSTREAM_NAME/'$UPSTREAM_NAME'/g' /etc/nginx/conf.d/$UPSTREAM_NAME.conf
                echo "(3/5) Proceed with replacing UPSTREAM_IP_PORT with $UPSTREAM_IP_PORT"
                sed -i -e 's/TEMPLATE_UPSTREAM_IP_PORT/'$UPSTREAM_IP_PORT'/g' /etc/nginx/conf.d/$UPSTREAM_NAME.conf
                echo "(4/5) Proceed with replacing SERVERNAME with $SERVERNAME"
                sed -i -e 's/TEMPLATE_SERVERNAME/'$SERVERNAME'/g' /etc/nginx/conf.d/$UPSTREAM_NAME.conf

                read -p "(5/5) Proceed to restart nginx? (y,n) [y]" restart
                restart=${restart:-y}
                echo "Selected: $restart"

                if [ "$restart" =  "y" ]; then
                        echo "Proceed to restart nginx"
                        echo "##############################################"
                        systemctl restart nginx
                        systemctl status nginx
                else
                        echo "[Done] configuration file : /etc/nginx/conf.d/$UPSTREAM_NAME.conf"
                        echo "Not Proceed with Restart. Please ensure to restart manually for the new configuration to effective."
                fi
        else
                echo "[Abort] Not Proceed with creating configuration file : /etc/nginx/conf.d/$UPSTREAM_NAME.conf"
        fi

else
        echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        echo "Incorrect number of arguments. 3 or 4 only."
        echo "Expecting 3 : UPSTREAM_NAME UPSTREAM_IP_PORT SERVERNAME"
        echo "Expecting 4 : UPSTREAM_NAME UPSTREAM_IP_PORT SERVERNAME UPSTREAM_PATH"
        echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        exit 2
fi