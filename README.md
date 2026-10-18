# UTS_Daspro_Dah-Penuh_C

## Judul Proyek
**Sistem Pemesanan Tiket Kereta Api Sederhana (TiketKeretaSederhana)**

## Deskripsi
Program Pascal berbasis konsol untuk memesan tiket kereta api. Pengguna dapat memilih tujuan, memasukkan data penumpang, mendapat potongan harga sesuai usia, membayar, dan melihat total penjualan. Program dibuat untuk memenuhi UTS Dasar Pemrograman DP5 (IKLC USU, Semester Ganjil T.A. 2026/2027).

## Anggota Kelompok
| Nama | NIM | KOM | Lab |
|------|-----|-----|-----|
| Tiara Brianna Damanik | 261401003 | C | 5 |
| Isabel Putricia Siregar | 261401072 | C | 6 |
| Sabrina | 261401054 | C | 5 |

## Isi Repositori
- `TiketKeretaSederhana.pas` : source code utama
- `Dokumentasi_Output.pdf` : tangkapan layar hasil jalannya program
- `README.md` : dokumentasi ini

## Fitur-Fitur Utama Program

### 1. Menu Interaktif
Menu utama berulang dengan `repeat-until` sampai pengguna memilih **3. Keluar**. Pilihan menu diproses dengan `case-of`:
1. Pesan tiket
2. Lihat total penjualan
3. Keluar

Pilihan di luar 1-3 ditangani oleh `else` ("Menu tidak ada").

### 2. Pesan Tiket
- **Pilih tujuan**: Bandung (Rp 150.000), Yogyakarta (Rp 350.000), Surabaya (Rp 600.000). Input divalidasi dengan `while true do` + `continue` (ulang jika salah) dan `break` (keluar jika benar). Kota dan harga ditentukan dengan `case-of`.
- **Input penumpang**: jumlah tiket, lalu nama dan usia tiap penumpang memakai perulangan `for-to-do`.
- **Diskon berdasarkan usia** (nested if-then-else):
  - Usia < 3 tahun: diskon 100% (gratis)
  - Usia 3-12 tahun: diskon 25%
  - Usia 13-59 tahun: tanpa diskon
  - Usia >= 60 tahun: diskon 20%
- **Harga akhir** = harga - (harga x diskon div 100), lalu dijumlahkan ke total bayar.
- **Pembayaran**: `while true do` meminta uang bayar; jika kurang dari total, tampil "Uang kurang" dan diulang (`continue`), jika cukup keluar (`break`). Kembalian = bayar - total.

### 3. Lihat Total Penjualan
Variabel `pendapatan` menyimpan akumulasi seluruh transaksi selama program berjalan dan ditampilkan lewat menu 2.

## Konsep Materi yang Digunakan
| Materi | Penerapan |
|--------|-----------|
| Input/Output & tipe data | `write`, `writeln`, `readln`; variabel `integer`, `longint`, `string` |
| Pengkondisian | `if-then-else`, nested-if (diskon), `case-of` (menu & tujuan) |
| Perulangan (3 jenis) | `repeat-until` (menu), `while-do` (validasi), `for-to-do` (data penumpang) |
| Kontrol loop | `break` dan `continue` pada validasi tujuan & pembayaran |
| Menu interaktif | Menu `repeat-until` dengan fitur terpisah |

## Cara Menjalankan
1. Buka `TiketKeretaSederhana.pas` di Free Pascal / Lazarus.
2. Compile dan run.
3. Ikuti menu yang tampil di layar.
