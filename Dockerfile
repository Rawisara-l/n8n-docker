FROM n8nio/n8n:1.116.2

ENV GENERIC_TIMEZONE=Asia/Bangkok \
    N8N_PROTOCOL=http \
    N8N_HOST=n8n-docker-qmzg.onrender.com \
    N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# ตั้งค่าพอร์ตและค่า proxy/runners แล้วสตาร์ท n8n
CMD ["/bin/sh","-lc","export N8N_PORT=${PORT:-5678}; export N8N_RUNNERS_DISABLED=${N8N_RUNNERS_DISABLED:-true}; export N8N_TRUSTED_PROXIES=${N8N_TRUSTED_PROXIES:-0.0.0.0/0}; n8n start"]
