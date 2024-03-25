FROM sharelatex/sharelatex

RUN tlmgr update --self --all && tlmgr install scheme-full

# fix reverse proxy to ipv4 and services mounted on ipv6
COPY sharelatex-nginx/sharelatex.conf /etc/nginx/sites-enabled/sharelatex.conf
