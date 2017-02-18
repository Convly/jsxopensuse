FROM opensuse:tumbleweed
ARG packages
MAINTAINER SUSE Containers Team <containers@suse.com>
RUN zypper install -y $packages && mkdir /rendu
COPY ./runner.sh /bin/runner
CMD echo "--START--" && runner && echo "--DONE--"

