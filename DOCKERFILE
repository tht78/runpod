# FROM pytorch/pytorch:2.0.1-cuda11.8-cudnn8-runtime
FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-runtime

# Install git
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip git curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# A single CMD that fetches and runs your private script
# CMD ["/bin/bash", "-c", "\
#     if [ -n \"${PRIVATE_REPO_TOKEN}\" ]; then \
#       echo 'Cloning private repository...'; \
#       git clone https://${PRIVATE_REPO_TOKEN}@github.com/${GITHUB_USER}/${GITHUB_REPO}.git /tmp/private_code; \
#       echo 'Running private setup...'; \
#       cd /tmp/private_code && chmod +x run.sh && ./run.sh; \
#     else \
#       echo 'No PRIVATE_REPO_TOKEN provided. Doing nothing...'; \
#       sleep 3600; \
#     fi \
# "]
