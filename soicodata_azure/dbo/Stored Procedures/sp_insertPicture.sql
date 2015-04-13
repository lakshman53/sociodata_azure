CREATE PROCEDURE sp_insertPicture @picture VARBINARY (MAX) AS
      INSERT INTO dbo.picture (picture) VALUES (@picture)
