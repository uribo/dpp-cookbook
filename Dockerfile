FROM uribo/practical-ds

RUN set -x && \
  apt-get update && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ARG GITHUB_PAT

RUN set -x && \
  echo "GITHUB_PAT=$GITHUB_PAT" >> /usr/local/lib/R/etc/Renviron

RUN set -x && \
  install2.r \
    xaringan && \
  installGithub.r \
    "hadley/emo" \
    "ropenscilabs/icon" && \
  rm -rf /tmp/downloaded_packages/ /tmp/*.rds
