
USE db_game_of_thrones;
CREATE TABLE GOT_episodes (
    id INT NOT NULL AUTO_INCREMENT,
    season INT NOT NULL,
    episode INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    rating DECIMAL(10 , 1) NOT NULL,
    duration INT NOT NULL,
    PRIMARY KEY (id)
);

/*Quantos minutos no total tem a série? */
SELECT SUM(duration) AS total from GOT_episodes;

/*Quantas temporadas a série possui?*/
SELECT COUNT(DISTINCT season) AS quantidade_de_temporadas FROM got_episodes;

/*Quantos episódios a série possui?*/
SELECT COUNT(episode) AS quantidade_de_episódios FROM got_episodes;

/*Quantos episódios cada temporada possui?*/
SELECT season, COUNT(episode) AS quantidade_de_episódios_por_temporada FROM got_episodes GROUP BY season;

/* Qual o episódio com menor avaliação da série?*/
SELECT MIN(rating) FROM GOT_episodes;

/*Qual o episódio mais bem avaliado de cada temporada?*/
SELECT * FROM got_episodes WHERE  season = 1  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 2  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 3  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 4  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 5 ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 6 ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 7 ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 8 ORDER BY rating DESC LIMIT 1;

/*Qual episódio com maior duração ?*/
SELECT MAX(duration) FROM GOT_episodes;
