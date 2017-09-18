#!/usr/bin/env bash

a2ensite site-1 site-2
a2dissite default-ssl
apache2ctl -D FOREGROUND