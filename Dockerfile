FROM n8nio/n8n:1.123.59

USER root

# Instalamos FFmpeg usando apt-get que es el comando correcto para esta imagen
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

USER node
