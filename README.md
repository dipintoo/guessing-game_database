![Logo GitHub](https://copilot.microsoft.com/images/create/game-tebak-angka-rahasia-dengan-tema-warna-biru-la/1-65e7f9fe467c44398cdb3f69f86a6cae?id=td9hOjbr2ZxaZUxWH8hfbw%3d%3d&view=detailv2&idpp=genimg&idpclose=1&thId=OIG2.YLFNP5cZs2Zz4ylpjlsu&FORM=SYDBIC)

# Game Tebak Angka Rahasia

Kita akan membuat game tebak angka antara 1 hingga 1000. Logic game ditulis dalam script bash dan data disimpan dalam database postgreSQL.

## Algoritma

1. Game meminta pemain untuk menginput **username**.
2. Game akan mengecek apakah data pemain sudah ada dalam database atau belum. Jika sudah, ambil datanya dan lanjut bermain. Jika belum, simpan dulu data pemain baru ke database sebelum lanjut bermain.
4. Game menampilkan pesan selamat datang untuk pemain dan game dimulai!

   - Pemain diminta untuk menginput tebakan berupa angka antara 1 sampai 1000.
   - Jika tebakannya salah, game akan terus berlangsung. Jumlah usaha menebak akan dihitung dan terus bertambah seiring tebakannya belum benar.
   - Game akan memberikan pesan kesalahan jika tebakan pemain masih salah dan memintanya untuk menginput angka lain sampai berhasil.
   - Yes, pemain berhasil menebak angkanya! Perhitungan usaha menebak angka pemain selesai.
6. Data riwayat (username, frekuensi bermain, dan jumlah usaha menebak) akan disimpan di dalam database.
7. Game akan memberikan selamat atas keberhasilan pemain menebak angka rahasianya 🏆.
8. Jika suatu saat pemain ingin mencoba bermain lagi, maka dia sudah dikenali oleh database dan menampilkan riwayat permainan sebelumnya.
