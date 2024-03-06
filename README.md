# Game Tebak Angka

Kita akan membuat game tebak angka rahasia antara 1 hingga 1000. Logic game ditulis dalam script bash dan data disimpan dalam database postgreSQL.

## Algoritma

1. Game meminta pemain untuk input _username_.
2. Game akan mengecek apakah data pemain sudah ada dalam database atau belum. Jika sudah, ambil datanya dan lanjut bermain. Jika belum, simpan dulu data pemain baru ke database sebelum lanjut bermain.
3. Game dimulai! Pemain diminta untuk menebak angka rahasia antara 1 sampai 1000 dengan cara menginput angka.
   - Jika tebakannya salah, game akan terus berlangsung. Jumlah usaha menebak akan dihitung dan terus bertambah seiring tebakannya belum benar.
   - Game akan memberikan pesan kesalahan jika tebakan pemain masih salah dan memintanya untuk menginput angka lain sampai berhasil.
   - Yes, pemain berhasil menebak angkanya. Perhitungan usaha menebak akan terhenti dan pemain akan melihat berapa banyak usaha yang dia lakukan sampai berhasil menebak angka rahasianya.
4. Setelah itu, data riwayat (username, jumlah permainan yang dimainkan, dan jumlah usaha menebak sampai benar) akan disimpan di dalam database.
5. Game akan memberikan selamat atas keberhasilan pemain menebak angka rahasianya 🏆.
6. Jika suatu saat pemain ingin mencoba bermain lagi, maka dia sudah dikenali oleh database dan menampilkan riwayat permainan sebelumnya.
