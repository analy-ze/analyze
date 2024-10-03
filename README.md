# Blockchain Project Analysis

## Deskripsi Proyek
Program ini dirancang untuk menganalisis dan mengevaluasi proyek-proyek blockchain baru dengan mengumpulkan data dari berbagai sumber, melakukan analisis tokenomics, sentimen, dan keterlibatan komunitas, serta menyajikan hasil analisis dalam bentuk laporan dan dashboard interaktif.

## Fitur Utama
- Pengumpulan data otomatis dari CoinGecko, CoinMarketCap, Twitter, Reddit, dan situs resmi proyek.
- Analisis tokenomics, sentimen, dan keterlibatan komunitas.
- Penyimpanan data terstruktur dalam PostgreSQL.
- Penyajian data melalui laporan HTML/PDF dan dashboard interaktif dengan Streamlit.
- Automasi pengumpulan data dan notifikasi melalui email/Telegram.

## Cara Instalasi
```bash
git clone https://github.com/username/blockchain-project-analysis.git
cd blockchain-project-analysis
python -m venv env
source env/bin/activate  # Untuk Unix/Linux
env\Scripts\activate  # Untuk Windows
pip install -r requirements.txt
