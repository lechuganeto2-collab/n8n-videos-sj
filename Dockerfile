
# Traemos FFmpeg desde su imagen oficial para extraer el ejecutable
FROM jrottenberg/ffmpeg:4.4-alpine AS ffmpeg_sources

# Iniciamos tu imagen de n8n en la versión exacta que necesitas
FROM n8nio/n8n:1.123.59

USER root

# Copiamos los binarios y librerías directamente desde la primera imagen
COPY --from=ffmpeg_sources /usr/local/bin/ffmpeg /usr/local/bin/ffmpeg
COPY --from=ffmpeg_sources /usr/local/bin/ffprobe /usr/local/bin/ffprobe
COPY --from=ffmpeg_sources /usr/local/lib/ /usr/local/lib/

USER node
