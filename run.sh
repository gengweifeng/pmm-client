#!/bin/bash

sudo pmm-admin config --server $SERVER_IP

sudo pmm-admin add mysql --user $MYSQL_ROOT_USER --password $MYSQL_ROOT_PASSWORD --host $MYSQL_HOST --create-user
