FROM n8nio/n8n:1.123.59-debian

USER root

# Ahora sí va a encontrar apt-get sin fallar
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

USER node
