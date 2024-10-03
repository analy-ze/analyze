# Gunakan image Python resmi sebagai base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt dan instal dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh kode proyek ke dalam container
COPY . .

# Tentukan perintah default saat container dijalankan
CMD ["python", "main.py"]
