FROM ubuntu:22.04
RUN apt-get update && apt-get install -y curl python3 ca-certificates && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://antigravity.google/cli/install.sh | bash
ENV PATH="/root/.local/bin:${PATH}"
EXPOSE 10000
CMD ["python3", "-m", "http.server", "10000"]
