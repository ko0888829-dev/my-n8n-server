FROM n8nio/n8n:latest

USER root

# Debian/Alpine နှစ်မျိုးလုံးမှာ အဆင်ပြေအောင် ffmpeg ထည့်သွင်းခြင်း
RUN if which apk; then \
        apk add --no-cache ffmpeg; \
    elif which apt-get; then \
        apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*; \
    fi

USER node
