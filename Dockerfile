FROM sharelatex/sharelatex:5.5.1

# Install necessary packages
RUN tlmgr update --self --all && tlmgr install scheme-full

# This script helps to export user projects from the Overleaf database. See https://github.com/overleaf/overleaf/issues/512#issuecomment-2687731651
# Usage: "cd /overleaf/services/web; node modules/server-ce-scripts/scripts/export-user-projects.mjs --export-all --output-dir=/var/lib/overleaf/data/exports"
COPY ./export-user-projects.mjs /overleaf/services/web/modules/server-ce-scripts/scripts/export-user-projects.mjs
