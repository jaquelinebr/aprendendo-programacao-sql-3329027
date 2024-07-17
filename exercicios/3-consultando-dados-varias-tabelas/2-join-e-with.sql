-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"

SELECT 
tracks.TrackId AS id,
tracks.Name as musica,
albums.Title as album,
artists.Name as artista
FROM
tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE
artists.name LIKE '%apoc%';

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso

WITH musica as (

SELECT 
tracks.TrackId as id,
tracks.Name as musica,
albums.Title as album,
artists.Name as artista
FROM
tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON artists.ArtistId = albums.ArtistId)

SELECT
artista,
COUNT(musica) as total_de_musicas
FROM
musica
WHERE 
artista LIKE 'Metal%';