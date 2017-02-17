FROM opensuse:tumbleweed
MAINTAINER SUSE Containers Team <containers@suse.com>
RUN zypper install -y make gcc-c++ && mkdir /rendu
COPY ./runner.sh /bin/runner
CMD echo "--START--" && runner && echo "--DONE--"

