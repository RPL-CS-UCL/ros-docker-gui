FROM valerio/anaconda-base:cpu

MAINTAINER Valerio Modugno <valerio.modugno@gmail.com>
LABEL Description="anaconda environment which support horizon with ubuntu (Ubuntu 20.04)" Vendor="TurluCode" Version="1.0"

# Install packages without prompting the user to answer any questions
ENV DEBIAN_FRONTEND noninteractive 

# install environment dependencies
RUN git clone https://github.com/ADVRHumanoids/horizon.git 
RUN conda env create -f /horizon/environment.yml

ENV CONDA_DIR /opt/conda
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

# fix and add dependencies 
RUN conda activate hori && \
    conda remove casadi && \ 
    conda install -y casadi=3.5.5 -c conda-forge && \
    conda config --env --add channels robostack-staging && \ 
    conda install -y ros-noetic-tf2-msgs && \
    conda install -y ros-noetic-rviz && \
    conda install -y horizon -c francesco_ruscelli

# Install VS Code
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add - && \
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

RUN apt-get update && apt-get install -y \
code && \
apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install cpplint

# Launch terminator
CMD ["terminator"] 
