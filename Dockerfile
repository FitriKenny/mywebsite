# Use the Ubuntu  base image
FROM ubuntu:18.04

# Update OS
RUN apt-get update
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list
RUN apt-get -y upgrade

RUN apt install -y python3 python3-virtualenv
# Install dependencies
#
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

#RUN virtualenv -p python3 frozenapp
#RUN source frozenapp/bin/activate
RUN pip3 install mako
RUN pip3 install flask
RUN pip3 install Frozen-Flask

VOLUME /home/public
WORKDIR /home
COPY . /home
CMD python3 frozenflask.py
CMD ./updatepublicdir.sh
