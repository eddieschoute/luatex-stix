FROM debian:testing-slim
RUN apt-get update

# Install lualatex and packages
# Stix 2 fonts are included with texlive-fonts-extra
RUN apt-get install -y texlive-luatex \
					texlive-latex-extra \
					texlive-bibtex-extra \
					texlive-science \
					texlive-fonts-extra \
					biber \
					latexmk \
					python-pygments \
					wget
# Update otf cache
RUN luaotfload-tool --update
