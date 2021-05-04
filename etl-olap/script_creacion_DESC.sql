UPDATE dbo.DIM_Conferencias 
SET <KeyName>=<ExistingKeyValue> 
WHERE <KeyName> IS NULL
------------------------------------------------------------------------------------------------
SET IDENTITY_INSERT dbo.DIM_Conferencias ON;
INSERT INTO dbo.DIM_Conferencias 
  (pk_conferencia, codigo_conferencia, conferencia) 
VALUES 
  (9999, 'DESC', 'DESCONOCIDO');  
SET IDENTITY_INSERT dbo.DIM_Divisiones OFF;
------------------------------------------------------------------------------------------------
SET IDENTITY_INSERT dbo.DIM_Divisiones ON;
INSERT INTO dbo.DIM_Divisiones
  (pk_division, codigo_division, division,id_conferencia) 
VALUES 
  (9999, 'DESC', 'DESCONOCIDO',9999);  
SET IDENTITY_INSERT dbo.DIM_Divisiones OFF;
------------------------------------------------------------------------------------------------

INSERT INTO dbo.DIM_Minutos
(pk_minutoSegundo, minutoSegundo)
VALUES 
  (9999, 'DESCONOCIDO');

UPDATE dbo.FACT_FREE_THROWS 
SET id_jugador=9999
WHERE id_jugador IS NULL