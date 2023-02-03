CREATE DATABASE db_game_of_thrones;
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

/*Quantas horas possui a temporada 8 de game of Thornes?*/
SELECT COUNT(DISTINCT season) AS quantidade_de_episódios FROM got_episodes;

/*Quantos episódios a série possuí?*/
SELECT COUNT(episode) AS avaliações_de_episódios FROM got_episodes;

/*Qual temporada e mais bem avaliada pelo público?*/
SELECT season, COUNT(episode) AS quantidade_de_episódios_por_temporada FROM got_episodes GROUP BY season;

/*Qual episódio ganhou destaque na série?*/
SELECT * FROM got_episodes WHERE  season = 1  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 2  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 3  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 4  ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 5 ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 6 ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 7 ORDER BY rating DESC LIMIT 1;
SELECT * FROM got_episodes WHERE  season = 8 ORDER BY rating DESC LIMIT 1;

/*Qual ano a série teve maior número de público assistindo?*/
SELECT season, episode, title, duration FROM got_episodes ORDER BY duration DESC;

