#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Input username
echo -e "\nEnter your username:"
read USERNAME

# Memeriksa keberadaan username dalam database
USERNAME_RESULT=$($PSQL "SELECT username FROM players WHERE username='$USERNAME'")
USER_ID_RESULT=$($PSQL "SELECT user_id FROM players WHERE username='$USERNAME'")

# Jika tidak ada, cetak pesan selamat datang dan simpan username baru ke database
if [[ -z $USERNAME_RESULT ]]; then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO players(username) VALUES ('$USERNAME')")
else
  # Jika sudah ada, ambil data username dan game dari database, lalu cetak pesan selamat datang.
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Membangkitkan data random dari 1 sampai 1000 dan memulai hitungan dari 0
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0

# Input tebakan angka
echo "Guess the secret number between 1 and 1000:"
read USER_GUESS

# Memeriksa kecocokan angka yang diinput
while [[ $USER_GUESS -ne $SECRET_NUMBER ]]; do
  # Jika input bukan angka, cetak pesan error
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]; then
    echo -e "\nThat is not an integer, guess again:"
  else
    # Jika input angka yang lebih kecil, cetak perintah input angka lain
    if [[ $USER_GUESS -lt $SECRET_NUMBER ]]; then
      echo "It's higher than that, guess again:"
    else
      echo "It's lower than that, guess again:"
    fi
  fi

  # Jika tebakan salah, input angka lagi dan jumlah usaha menebak terus meningkat.
  read USER_GUESS
  ((GUESS_COUNT++))
done

# Jika tebakan benar keluar dari loop. Hitungan tebakan ditambah satu karena tebakan sama dengan angka rahasia sehingga langkahnya tak terhitung.
# Ini dilakukan untuk mencocokkan total tebakan agar akurat.
((GUESS_COUNT++))

# Simpan informasi user, angka rahasia, dan jumlah usaha tebakan sampai benar
USER_ID_RESULT=$($PSQL "SELECT user_id FROM players WHERE username='$USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, secret_number, number_of_guesses) VALUES ($USER_ID_RESULT, $SECRET_NUMBER, $GUESS_COUNT)")

# Mencetak pesan kemenangan
echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
