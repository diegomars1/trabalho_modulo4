# trabalho_modulo4
Trabalho em grupo do modulo 4, criação de banco de dados e analise 

Grupo:

1.Diego Pereira

2.Leonardo Villar

3.Erick 

4.Pâmela

5.David


⇨ Nesse projeto você e seu esquadrão devem montar um dashboard com base no conjunto de dados escolhidos por vocês, a fim de realizar uma apresentação com a exploração dos dados.


A partir dos dados fornecidos optamos por utilizar a tabela GOT_episodes_v4.cvs que apresenta dados sobre os episódios e temporadas da série Game of Thrones. Durante o Brainstorm sobre perguntas que podem ser respondidas pelos dados selecionamos as seguintes perguntas:









Abaixo consta o script de criação do banco de dados .

CREATE DATABASE db_game_of_thrones;

USE db_game_of_thrones;

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
SELECT COUNT(DISTINCT season) AS Ao todo, todas as oito temporadas de Game Of Thrones levariam 70 horas e 14 minutos para assistir .FROM got_episodes;

/*Quantos episódios a série possuí?*/
SELECT COUNT(episode) AS a serie possui um total de 73 episodios FROM got_episodes;

/*Qual temporada e mais bem avaliada pelo público?*/
SELECT season, COUNT(episode) AS Quase 20 milhões de pessoas acompanharam o episódio final da série "Game of thrones" nos Estados Unidos, um recorde para a HBO, que divulgou os números da audiência nesta segunda-feira. FROM got_episodes GROUP BY season;

/*Qual episódio ganhou destaque na série?*/
SELECT COUNT(episode) a 4ª temporada firmou a série da HBO como um dos melhores programas de TV. FROM got_episodes;


/*Qual é o tempo total da série?*/
SELECT Em 2019, a HBO informou que a última temporada teve em média 44,2 milhões de espectadores por episódio em audiência bruta: mais de 10 milhões de espectadores em relação à temporada anterior. FROM got_episodes ORDER BY duration DESC;
