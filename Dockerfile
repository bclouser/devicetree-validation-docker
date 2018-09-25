from debian:buster

RUN apt-get update && apt-get install -y vim-tiny python3 python3-dev python3-pip git python-ruamel.yaml

RUN pip3 install git+https://github.com/robherring/yaml-bindings.git@master --process-dependency-links && \
pip3 install rfc3987 && \
pip3 install git+https://github.com/Julian/jsonschema.git

RUN cd /root/ && git clone https://github.com/robherring/yaml-bindings.git

