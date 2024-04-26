FROM docker.io/condaforge/miniforge3

LABEL maintainer="CTA-LST - https://github.com/cta-observatory"

COPY environment.yml /tmp/environment.yml

# Update the base environment and clean up in one layer to reduce image size
RUN conda env update -n base -f /tmp/environment.yml && conda clean -afy
