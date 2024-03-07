![Cover](https://github.com/dipintoo/guessing-game_database/blob/main/img/Cover_5.jpg)

## Goals

Membuat game tebak angka rahasia antara 1 hingga 1000. Game mampu mengenali apakah yang bermain adalah pemain lama atau pemain baru berdasarkan username-nya. Game akan menampilkan riwayat bermain terbaik jika dia pemain lama dan menyimpan username bagi pemain baru. Data akan terus diperbaharui setiap kali permainan baru dimulai.  

Logic game ditulis dalam script bash dan data disimpan dalam database postgreSQL.

## Alur Kerja

### Database

Membuat [database](https://github.com/dipintoo/guessing-game_database/blob/main/number_guess.sql) yang terdiri dari tabel `games` dan `players` serta membuat relasinya.

![Cover](https://github.com/dipintoo/guessing-game_database/blob/main/img/Database%20Design.png)

### [Algoritma Bash Script](https://github.com/dipintoo/guessing-game_database/blob/main/number_guess.sh)

1. Game meminta pemain untuk menginput **username**.
2. Game akan mengecek apakah data pemain sudah ada dalam database atau belum. Jika sudah, ambil datanya dan lanjut bermain. Jika belum, simpan dulu data pemain baru ke database sebelum lanjut bermain.
5. Game menampilkan pesan selamat datang untuk pemain dan game dimulai!

   - Pemain diminta untuk menginput tebakan berupa angka antara 1 sampai 1000.
   - Jika tebakannya salah, game akan terus berlangsung. Jumlah usaha menebak akan dihitung dan terus bertambah seiring tebakannya belum benar.
   - Game akan memberikan pesan kesalahan jika tebakan pemain masih salah dan memintanya untuk menginput angka lain sampai berhasil.
   - Yes, pemain berhasil menebak angkanya! Perhitungan usaha menebak angka pemain selesai.
6. Data riwayat (username, frekuensi bermain, dan jumlah usaha menebak terbaik) akan disimpan di dalam database.
7. Game akan memberikan selamat atas keberhasilan pemain menebak angka rahasianya 🏆.
8. Jika suatu saat ingin bermain lagi, pemain sudah dikenali oleh database dan menampilkan riwayat terbaiknya.

## Sumber

freeCodeCamp. (2024). Relational Database. Diakses dari https://www.freecodecamp.org/learn/relational-database/build-a-number-guessing-game-project/build-a-number-guessing-game


[**_<< Previous Project - Universe Database_**](https://github.com/dipintoo/universe_database)
