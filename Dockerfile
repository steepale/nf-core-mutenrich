FROM nfcore/base
LABEL authors="Alec Steep" \
      description="Docker image containing all requirements for nf-core/mutenrich pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-mutenrich-1.0dev/bin:$PATH
