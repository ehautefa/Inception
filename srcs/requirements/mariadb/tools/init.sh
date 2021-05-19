#!/bin/bash
mysql_install_db
service mysql start
tail -f /dev/null