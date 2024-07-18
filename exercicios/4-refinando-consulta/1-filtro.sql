-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"

SELECT
tracks.TrackId as id,
tracks.Name as musica,
albums.Title as album,
artists.Name as artista
FROM
tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE
musica LIKE '%love%'
AND album NOT LIKE 'Da lama Ao Caos';