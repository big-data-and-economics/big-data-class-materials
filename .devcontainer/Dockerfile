# Pre-built Dev Container Image for R. More info: https://github.com/rocker-org/devcontainer-images/pkgs/container/devcontainer%2Ftidyverse
# Available R version: 4, 4.1, 4.0
ARG VARIANT="4.3"
FROM ghcr.io/rocker-org/devcontainer/tidyverse:${VARIANT}

RUN install2.r --error --skipinstalled -n -1 \
        here \
        markdown \
    && rm -rf /tmp/downloaded_packages \
    && apt-get update \
    && apt update \
    && apt-get install -y --no-install-recommends libxt6 

RUN wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh