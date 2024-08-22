FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:develop@sha256:d4339a6895ab99e4de3e62b96f1ec253f2df7abe6dfdb8321ed79e44f88d9d99
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
COPY nomad.yaml nomad.yaml
