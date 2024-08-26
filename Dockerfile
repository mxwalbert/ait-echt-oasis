FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:develop
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
COPY remove_plugins.txt remove_plugins.txt
RUN pip uninstall -y -r remove_plugins.txt
COPY nomad.yaml nomad.yaml
