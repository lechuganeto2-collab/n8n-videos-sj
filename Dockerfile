FROM n8nio/n8n:1.123.59
USER root
RUN apk add --no-cache ffmpeg
USER node
