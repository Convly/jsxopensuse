FROM epitechcontent/epitest-docker
ARG packages
MAINTAINER Jean-Sébastien JSX Herbaux <jean-sebastien.herbaux@epitech.eu>
RUN zypper install -y $packages && mkdir /rendu
COPY ./runner.sh /bin/runner
CMD echo "--START--" && runner && echo "--DONE--"
