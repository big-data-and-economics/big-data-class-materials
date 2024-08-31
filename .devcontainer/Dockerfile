# Pre-built Dev Container Image for R. More info: https://github.com/rocker-org/devcontainer-images/pkgs/container/devcontainer%2Ftidyverse
# Available R version: 4, 4.1, 4.0
ARG VARIANT="4.3"
FROM ghcr.io/rocker-org/devcontainer/geospatial:${VARIANT}

RUN apt-get install -y --no-install-recommends libxt6 \
    && rm -rf /var/lib/apt/lists/*

# RUN install2.r --error --skipinstalled -n -1 \
#         here \
#         markdown \
#         nngeo \
#         tidycensus \
#     && rm -rf /tmp/downloaded_packages \
#     && apt-get update \
#     && apt update \
#     && apt-get install -y --no-install-recommends libxt6 libudunits2-dev libgdal-dev libgeos-dev libproj-dev