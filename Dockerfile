FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    ansible \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

CMD ["ansible-playbook", "lab_playbook.yml"]
