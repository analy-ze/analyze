# Requirement Specification

## 1. Pendahuluan

### 1.1 Tujuan
Dokumen ini merinci kebutuhan fungsional dan non-fungsional untuk pengembangan Program Analisis Proyek Blockchain.

### 1.2 Ruang Lingkup
Pengumpulan data, analisis tokenomics, sentimen, keterlibatan komunitas, penyimpanan data, penyajian laporan, dan automasi notifikasi.

## 2. Kebutuhan Fungsional

### 2.1 Data Collection
- Integrasi dengan CoinGecko API untuk mengambil data harga, market cap, dll.
- Integrasi dengan CoinMarketCap API untuk mengambil

 data proyek.
- Integrasi dengan Twitter API untuk mengambil tweet terkait proyek.
- Integrasi dengan Reddit API (menggunakan PRAW) untuk mengambil posting dan komentar dari subreddit terkait.
- Web scraping dari situs resmi proyek untuk mengambil informasi tambahan seperti whitepaper dan roadmap.

### 2.2 Data Storage
- Menyimpan data yang dikumpulkan ke dalam database PostgreSQL atau MongoDB.
- Struktur database harus mendukung query efisien untuk analisis data.

### 2.3 Data Analysis
- **Tokenomics Analysis:** Analisis distribusi token, total supply, mekanisme staking/yield farming.
- **Sentiment Analysis:** Menggunakan NLP untuk menganalisis sentimen dari tweet dan posting Reddit.
- **Community Engagement:** Mengukur keterlibatan komunitas berdasarkan jumlah followers, posting, dan komentar.

### 2.4 Data Presentation
- Menghasilkan laporan dalam format HTML atau PDF menggunakan Jinja2.
- Menyajikan data melalui dashboard interaktif menggunakan Streamlit atau Dash.

### 2.5 Automation and Notifications
- Mengumpulkan dan menganalisis data secara otomatis pada jadwal yang ditentukan (harian/mingguan).
- Mengirim notifikasi melalui email atau Telegram saat ada update penting.

## 3. Kebutuhan Non-Fungsional

### 3.1 Performance
- Program harus dapat mengumpulkan dan menganalisis data dalam waktu yang efisien.
- Dashboard harus responsif dan cepat dalam memuat data.

### 3.2 Scalability
- Program harus dapat menangani peningkatan volume data seiring bertambahnya jumlah proyek blockchain yang dianalisis.

### 3.3 Security
- API keys dan data sensitif harus disimpan dengan aman menggunakan environment variables atau secret managers.
- Akses ke database harus dilindungi dengan autentikasi yang kuat.

### 3.4 Usability
- Dashboard harus user-friendly dan mudah dipahami oleh pengguna akhir.
- Laporan harus disusun dengan tata letak yang jelas dan informatif.

### 3.5 Maintainability
- Kode harus ditulis dengan standar yang baik dan terdokumentasi dengan jelas untuk memudahkan pemeliharaan dan pengembangan lanjutan.

## 4. Diagram Alur Proses

![Diagram Alur Proses](link_to_flowchart_image)

*Catatan: Tambahkan diagram alur proses yang menggambarkan aliran data dari pengumpulan hingga penyajian.*

## 5. Antarmuka Pengguna

### 5.1 Dashboard Interaktif
- Menampilkan visualisasi data seperti grafik harga, sentimen, dan metrik keterlibatan.
- Filter dinamis untuk analisis mendalam berdasarkan kriteria tertentu.

### 5.2 Laporan HTML/PDF
- Struktur laporan yang mencakup semua analisis yang telah dilakukan.
- Layout yang rapi dan informatif dengan grafik dan tabel pendukung.

## 6. Kriteria Penerimaan

### 6.1 Data Collection
- Data berhasil diambil dari semua sumber yang ditentukan tanpa error.
- Data yang dikumpulkan akurat dan konsisten.

### 6.2 Data Analysis
- Analisis tokenomics, sentimen, dan keterlibatan komunitas berjalan dengan benar.
- Skor sentimen mencerminkan data nyata dari media sosial dan berita.

### 6.3 Data Presentation
- Laporan yang dihasilkan lengkap dan mudah dipahami.
- Dashboard interaktif berfungsi dengan baik dan menampilkan data secara real-time.

### 6.4 Automation and Notifications
- Automasi pengumpulan data berjalan sesuai jadwal yang ditentukan.
- Notifikasi dikirimkan tepat waktu dan berisi informasi yang relevan.

## 7. Glossary

- **API:** Application Programming Interface
- **NLP:** Natural Language Processing
- **ORM:** Object-Relational Mapping
- **CI/CD:** Continuous Integration/Continuous Deployment
- **dApps:** Decentralized Applications

---

### **8. Rencana Risiko dan Mitigasi**

| **Risiko** | **Dampak** | **Mitigasi** |
|------------|------------|--------------|
| Ketidaklengkapan API | Data yang diambil tidak lengkap atau tidak akurat | Menyediakan fallback ke metode pengumpulan data lain seperti web scraping |
| Perubahan API | API berubah sehingga program tidak dapat mengambil data | Memantau perubahan API secara rutin dan melakukan update kode sesuai kebutuhan |
| Masalah Keamanan | Data sensitif bocor atau disalahgunakan | Menggunakan environment variables untuk menyimpan API keys dan menerapkan enkripsi data |
| Keterlambatan Pengumpulan Data | Analisis tidak dapat dilakukan tepat waktu | Mengatur jadwal pengumpulan data dengan buffer waktu dan mengoptimalkan proses pengumpulan data |

---

### **9. Approval**

| **Nama** | **Peran** | **Tanggal** |
|----------|----------|-------------|
| [Nama Project Manager] | Project Manager | [Tanggal] |
| [Nama Stakeholder Utama] | Stakeholder Utama | [Tanggal] |

---

### **10. Lampiran**

- **Contoh Template Project Charter**
- **Contoh Template Requirement Specification**
- **Diagram Alur Proses (Flowchart)**

---
