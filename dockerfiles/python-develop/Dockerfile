# syntax=docker/dockerfile:1.9
FROM python:3.13.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:0.11.3 /uv /uvx /bin/

# 速度・安定化用の環境変数
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    UV_LINK_MODE=copy \
    UV_SYSTEM_PYTHON=1

# 必要なOS依存パッケージ:
# - libgomp1: scikit-learn の OpenMP 実行時に必要
RUN apt-get update && apt-get install -y --no-install-recommends \
      libgomp1 \
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ
WORKDIR /app

# 依存だけ先にコピー（キャッシュを効かせるため）
COPY requirements.txt .

# 依存をシステム環境にインストール
# BuildKit のキャッシュを使ってダウンロードの再利用を有効化
RUN --mount=type=cache,target=/root/.cache/uv \
    uv pip install --no-cache -r requirements.txt
