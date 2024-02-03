FROM sharelatex/sharelatex

RUN tlmgr update --self --all && tlmgr install scheme-full
