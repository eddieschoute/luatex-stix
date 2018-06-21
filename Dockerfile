FROM debian:testing-slim
RUN apt-get update

# Install lualatex and packages
RUN apt-get install -y texlive-luatex \
					texlive-latex-extra \
					texlive-bibtex-extra \
					texlive-science \
					biber \
					latexmk \
					python-pygments \
					wget

# Install stix fonts 2
RUN wget -q https://github.com/stipub/stixfonts/archive/2.0.0.tar.gz
RUN tar -xzf 2.0.0.tar.gz
RUN cp stixfonts-2.0.0/OTF/*.otf /usr/local/share/fonts/
RUN fc-cache
RUN rm 2.0.0.tar.gz && rm -r stixfonts-2.0.0
