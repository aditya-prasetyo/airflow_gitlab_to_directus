FROM apache/airflow:3.0.1

USER root

# Install dependencies if needed (polars has no native deps, but just in case)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER airflow

# Install polars
RUN pip install --no-cache-dir polars
