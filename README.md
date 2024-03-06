# Game Tebak Angka Rahasia

Kita akan membuat game tebak angka antara 1 hingga 1000. Logic game ditulis dalam script bash dan data disimpan dalam database postgreSQL.

## Algoritma

1. Game meminta pemain untuk menginput _username_.
2. Game akan mengecek apakah data pemain sudah ada dalam database atau belum. Jika sudah, ambil datanya dan lanjut bermain. Jika belum, simpan dulu data pemain baru ke database sebelum lanjut bermain.
4. Game menampilkan pesan selamat datang untuk pemain dan game dimulai!
   - Pemain diminta untuk menginput tebakan berupa angka antara 1 sampai 1000.
   - Jika tebakannya salah, game akan terus berlangsung. Jumlah usaha menebak akan dihitung dan terus bertambah seiring tebakannya belum benar.
   - Game akan memberikan pesan kesalahan jika tebakan pemain masih salah dan memintanya untuk menginput angka lain sampai berhasil.
   - Yes, pemain berhasil menebak angkanya! Perhitungan usaha menebak selesai.
6. Data riwayat (username, jumlah permainan yang dimainkan, dan jumlah usaha menebak sampai benar) akan disimpan di dalam database.
7. Game akan memberikan selamat atas keberhasilan pemain menebak angka rahasianya 🏆.
8. Jika suatu saat pemain ingin mencoba bermain lagi, maka dia sudah dikenali oleh database dan menampilkan riwayat permainan sebelumnya.
