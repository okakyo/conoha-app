#!/bin/bash
certbot-auto --nginx -d  kyoro-site.tk -d www.kyoro-site.tk -m 0622okakyo@gmail.com --agree-tos -n
certbot-auto renew
/bin/bash