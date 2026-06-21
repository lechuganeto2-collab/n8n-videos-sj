
FROM n8nio/n8n:1.123.59

USER root

# Descargamos un binario estático de FFmpeg que no necesita instaladores de Linux
ADD https://github.com/mwolfe38/ffmpeg-debian/raw/master/ffmpeg /usr/local/bin/ffmpeg

# Le damos permisos de ejecución para que n8n lo pueda usar
RUN chmod +x /usr/local/bin/ffmpeg

USER node
