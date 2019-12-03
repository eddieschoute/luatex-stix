FROM debian:testing-slim

# Install lualatex and packages
RUN apt-get update && apt-get install -y texlive-luatex \
					texlive-latex-recommended \
					texlive-fonts-recommended \
					texlive-bibtex-extra \
					texlive-science \
					texlive-pictures \
					biber \
					latexmk \
					python-pygments \
					wget

RUN tlmgr init-usertree
RUN tlmgr install stix2-otf preprint ifoddpage todonotes enumitem cleveref
# Update otf cache
RUN luaotfload-tool --update
