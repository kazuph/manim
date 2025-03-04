FROM manimcommunity/manim:latest

USER root

# 日本語フォントとLaTeXの日本語サポートをインストール
RUN apt-get update && apt-get install -y \
    fonts-ipafont \
    texlive-lang-japanese \
    xdvik-ja \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 日本語フォントのキャッシュを更新
RUN fc-cache -fv

USER manimuser
WORKDIR /notes
