FROM n8nio/n8n:1.116.2

# ค่าพื้นฐาน
ENV GENERIC_TIMEZONE=Asia/Bangkok \
    N8N_PROTOCOL=http \
    N8N_HOST=n8n-docker-qmzg.onrender.com

# ตั้ง N8N_PORT จาก PORT ของ Render และค่าอื่น ๆ แล้วสตาร์ท n8n
CMD ["sh","-lc","N8N_PORT=${PORT:-5678} N8N_RUNNERS_DISABLED=${N8N_RUNNERS_DISABLED:-true} N8N_TRUSTED_PROXIES=${N8N_TRUSTED_PROXIES:-0.0.0.0/0} n8n start"]
