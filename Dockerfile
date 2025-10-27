# ใช้ image ของ n8n เวอร์ชันเสถียร
FROM n8nio/n8n:1.116.2

# ตั้ง timezone เริ่มต้น
ENV GENERIC_TIMEZONE=Asia/Bangkok \
    N8N_PROTOCOL=http \
    N8N_HOST=n8n-docker-qmzg.onrender.com

# คัดลอกสคริปต์ entrypoint เข้ามาใน image
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# ใช้สคริปต์นี้ตอน container เริ่มทำงาน
CMD ["/bin/sh","-lc","/docker-entrypoint.sh"]
