Dashboard Perpustakaan

Aplikasi web untuk mengelola data perpustakaan yang dikembangkan menggunakan Node.js, Express.js, dan MySQL dengan konsep REST API. Antarmuka pengguna dibuat menggunakan HTML, CSS, dan JavaScript murni (Vanilla JS) sehingga aplikasi ringan dan mudah digunakan. Proyek ini dibuat sebagai penyelesaian Soal 2 Ujian Akhir Semester (UAS).

Fitur Aplikasi
Dashboard & Daftar Buku
Menampilkan seluruh koleksi buku beserta informasi statusnya, apakah masih tersedia atau sedang dipinjam.
Pencarian Buku
Memudahkan pengguna mencari buku berdasarkan judul dengan hasil yang diperbarui secara langsung (real-time).
Pengelolaan Data Buku (CRUD)
Menambahkan, mengubah, melihat, dan menghapus data buku, termasuk fitur upload gambar sampul.
Pengelolaan Data Anggota (CRUD)
Mengelola informasi peminjam atau anggota perpustakaan melalui fungsi tambah, edit, dan hapus data.
Peminjaman dan Pengembalian Buku
Mencatat transaksi peminjaman serta pengembalian buku. Status buku akan berubah otomatis menjadi Dipinjam saat dipinjam dan kembali menjadi Tersedia setelah dikembalikan.
Teknologi yang Digunakan

Backend

Node.js
Express.js

Database

MySQL
mysql2

Upload File

Multer

Frontend

HTML5
CSS3
Vanilla JavaScript
Langkah Instalasi dan Menjalankan Program
1. Menyiapkan Database
Jalankan Apache dan MySQL melalui XAMPP Control Panel.
Buka phpMyAdmin atau MySQL Command Line.
Import file setup_db.sql untuk membuat database db_perpustakaan beserta seluruh tabel yang diperlukan.
Sebagai alternatif, jalankan perintah berikut agar database dibuat secara otomatis:
node setup_db.js
2. Menginstal Package

Masuk ke folder proyek melalui Terminal atau Command Prompt, kemudian jalankan:

npm install

Perintah tersebut akan menginstal seluruh package yang dibutuhkan oleh aplikasi.

3. Menjalankan Server

Setelah proses instalasi selesai, jalankan server menggunakan perintah:

node app.js

Apabila berhasil, server akan aktif pada port 3000 dan terminal akan menampilkan informasi bahwa aplikasi berhasil dijalankan.

4. Membuka Aplikasi

Buka browser, kemudian akses alamat berikut:

http://localhost:3000

Aplikasi Dashboard Perpustakaan siap digunakan.

Struktur Folder
config/db.js → Konfigurasi koneksi database MySQL.
controllers/ → Berisi proses atau logika utama aplikasi.
routes/ → Menyimpan seluruh endpoint REST API.
public/ → File frontend seperti HTML, CSS, dan JavaScript.
uploads/ → Tempat penyimpanan gambar sampul buku yang diunggah.
app.js → File utama untuk menjalankan server Express.
setup_db.sql → Skrip SQL untuk membuat database dan tabel.
Keterangan

Aplikasi ini dibuat sebagai implementasi materi Pemrograman Web dengan memanfaatkan konsep CRUD (Create, Read, Update, Delete), REST API, serta fitur upload file menggunakan JavaScript, Node.js, Express, dan MySQL sebagai syarat penyelesaian Ujian Akhir Semester (UAS).
