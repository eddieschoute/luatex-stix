FROM debian:testing-slim

# Install lualatex and packages
# Stix 2 fonts are included with texlive-fonts-extra
RUN apt-get update && apt-get install -y texlive-luatex \
					texlive-fonts-recommended \
					texlive-bibtex-extra \
					texlive-science \
					biber \
					latexmk \
					python-pygments \
					wget

RUN tlmgr init-usertree
RUN tlmgr install stix2-otf
# Update otf cache
RUN luaotfload-tool --update
