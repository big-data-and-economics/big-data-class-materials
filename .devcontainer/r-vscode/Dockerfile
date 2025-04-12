FROM ghcr.io/rocker-org/devcontainer/tidyverse:4.4

RUN install2.r httpgd languageserver rstatix \
    tidyfinance tidyquant fixest tsibble feasts tseries fable \
    PortfolioAnalytics rugarch ggpubr scales skimr git2r \
    panelView nycflights13 \
    && rm -rf /tmp/downloaded_packages
