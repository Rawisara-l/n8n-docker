#!/bin/sh
# ตั้งค่า PORT จาก Render เป็นค่าใช้ใน n8n
export N8N_PORT="${PORT:-5678}"

# ปิด runners (ถ้าใช้แค่บริการเดียว)
export N8N_RUNNERS_DISABLED="${N8N_RUNNERS_DISABLED:-true}"

# ให้เชื่อใจ proxy (แก้ error X-Forwarded-For)
export N8N_TRUSTED_PROXIES="${N8N_TRUSTED_PROXIES:-0.0.0.0/0}"

# เริ่มรัน n8n
exec n8n start
