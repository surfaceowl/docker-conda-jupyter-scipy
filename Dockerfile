FROM jupyter/scipy-notebook
USER root

# update core python packages
RUN conda update -n base conda
RUN conda update conda
RUN conda update --all

# Add Live slideshows with RISE
# currently fails:  RUN conda install -c damianavila82 rise

# setup working directories
RUN mkdir -p /notebooks/
COPY run.sh run_jupyter.sh /notebooks/
WORKDIR /notebooks
RUN ls -al

CMD ["/notebooks/./run_jupyter.sh"]
