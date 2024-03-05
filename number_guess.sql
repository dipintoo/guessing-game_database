-- Tabel Games
CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    number_of_guesses INTEGER,
    secret_number INTEGER
    user_id REFERENCES players(user_id)
);

-- Tabel Players
CREATE TABLE players (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL
);
