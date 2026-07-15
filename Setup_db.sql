CREATE DATABASE IF NOT EXISTS db_perpustakaan;

USE db_perpustakaan;

DROP TABLE IF EXISTS peminjaman;
DROP TABLE IF EXISTS peminjam;
DROP TABLE IF EXISTS buku;

CREATE TABLE buku (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(255) NOT NULL,
    pengarang VARCHAR(255) NOT NULL,
    penerbit VARCHAR(255) NOT NULL,
    tahun_terbit INT NOT NULL,
    gambar_sampul VARCHAR(255) DEFAULT NULL,
    status ENUM('Tersedia','Dipinjam') NOT NULL DEFAULT 'Tersedia'
);

CREATE TABLE peminjam (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nim VARCHAR(20) UNIQUE NOT NULL,
    nama VARCHAR(255) NOT NULL,
    jurusan VARCHAR(255) NOT NULL,
    no_telp VARCHAR(20)
);

CREATE TABLE peminjaman (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_buku INT NOT NULL,
    id_peminjam INT NOT NULL,
    tanggal_pinjam DATE NOT NULL,
    tanggal_kembali DATE DEFAULT NULL,
    status ENUM('Dipinjam','Dikembalikan') DEFAULT 'Dipinjam',

    CONSTRAINT fk_buku
        FOREIGN KEY (id_buku)
        REFERENCES buku(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_peminjam
        FOREIGN KEY (id_peminjam)
        REFERENCES peminjam(id)
        ON DELETE CASCADE
);

-- Data Buku
INSERT INTO buku
(judul, pengarang, penerbit, tahun_terbit, gambar_sampul, status)
VALUES
('Pemrograman Web Modern', 'Abdul Kadir', 'Andi Publisher', 2022, 'cover-web.jpg', 'Dipinjam');

-- Data Peminjam
INSERT INTO peminjam
(nim, nama, jurusan, no_telp)
VALUES
('411241010', 'Kevin Raja Pradana', 'Teknik Informatika', '081234567890'),
('4112410100', 'Cut Zahwa Alaika Syifa', 'Teknik Informatika', '082345678901');

-- Data Transaksi Peminjaman
INSERT INTO peminjaman
(id_buku, id_peminjam, tanggal_pinjam, tanggal_kembali, status)
VALUES
(1, 1, '2026-07-13', NULL, 'Dipinjam');
