# FYP-17-2022
# Topik Proyek : Implementation of Robotic Process Automation at Del Institute of Technology Academic System
# Nama Sistem atau Aplikasi : Pelaporan_Nilai, Presensi_Perkuliahan, dan PMB
# Jenis Sistem atau Aplikasi : RPA(Robotic Process Automation)
# Spesifikasi minimal dari device :
- CPU Cores : 2 x 1.8 Ghz 32-bit (x86)
- RAM : 4 GB
- Disk Spaces : 3.5 GB
# Kebutuhan tools terkait :
- XAMPP
- UiPath Studio untuk membuat dan menjalankan RPA
- Microseoft Excel
- Outlook
- Chrome atau aplikasi sejenis untuk browser
- MySQL
# Kebutuhan tools terkait :
- XAMPP
- UiPath Studio untuk membuat dan menjalankan RPA
- Microseoft Excel
- Outlook
- Chrome atau aplikasi sejenis untuk browser
- MySQL
# Konfigurasi untuk menjalanakan aplikasi web atau mobile :
- Instalasi UiPath Studio
- Menghubungkan Database ke UiPath
# Langkah-langkah menjalankan aplikasi web atau mobile
## Instalasi UiPath Studio:
1. Buka UiPath di browser dari link resminya yaitu https://www.uipath.com/ .
2. Login ke halaman tersebut dan daftar akun jika belum mempunyai akun pada UiPath.
3. Setelah masuk ke halaman Automation Cloud, download Studio/StudioX seperti pada gambar dibawah. 
4. Install Studio/StudioX yang telah di download
5. Jalankan Studio/StudioX yang telah diinstal.

## Menghubungkan Database ke UiPath:
1. Buka ODBC Data Source.
2. Pilih Menu "User DNS" dan klik Add.
3. Pilih "MySQL ODBC 8.0 ANSI Driver".
4. Masukkan Data Source Name, TCP/IP Server beserta port nya, User, Password, dan Database.
5. Klik Test, Jika muncul "Connection Successful" maka sudah connect.
6. Klik Ok dan User Data Source sudah berhasil ditambahkan.
7. Buka UIPath dan cari Activities "Connect to Database".
8. Klik "Configure Connection" dan akan muncul menu "Edit Connection Settings"
9. Pada Data Source pilih "<other>", pada Data Provider pilih ".NET Framework Data Provider for ODBC", dan pada Use user or system data source (32 bit only) pilih nama User Data Source yang sudah ditambahkan tadi.
10. Klik Test Connection dan jika muncul "Test connection succeeded" maka connect ke database sudah berhasil. Klik Ok
