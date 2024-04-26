FROM docker.io/condaforge/miniforge3

LABEL maintainer="CTA-LST - https://github.com/cta-observatory"

RUN conda env update -n base -f environment.yml

RUN conda clean -a
