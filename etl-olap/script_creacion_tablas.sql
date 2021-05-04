------------------------------------------------------------------------------------------------
--
-- DIMENSIONES
--
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Conferencias
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Conferencias (
    [pk_conferencia] 		[INT] NOT NULL,
    [codigo_conferencia] 	[NVARCHAR](50) NULL,
    [conferencia]		 	[NVARCHAR](100) NULL,
    CONSTRAINT PK_DIM_Conferencias PRIMARY KEY (pk_conferencia)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Divisiones 
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Divisiones (
    [pk_division] 		[INT] NOT NULL,
    [codigo_division] 	[NVARCHAR](50) NULL,
    [division]		 	[NVARCHAR](100) NULL,
	[id_conferencia]	[INT] NULL,
    CONSTRAINT PK_DIM_Divisiones PRIMARY KEY (pk_division),
	CONSTRAINT FK_DIM_Divisiones_Conf FOREIGN KEY (id_conferencia) REFERENCES dbo.DIM_Conferencias (pk_conferencia)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Equipos 
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Equipos (
    [pk_equipo]	 		[INT] NOT NULL,
    [id_estado_EEU]	 	[INT] NULL,
    [id_division]		[INT] NULL,
	[liga]			 	[NVARCHAR](50) NULL,
	[codigo_equipo]	 	[NVARCHAR](50) NULL,
	[nombre_equipo]	 	[NVARCHAR](255) NULL,
	[ciudad]			[NVARCHAR](255) NULL,
	[pabellon]		 	[NVARCHAR](255) NULL,
	[fundado]			[INT] NULL,
	[patrocinio]		[NVARCHAR](255) NULL,
    CONSTRAINT PK_DIM_Equipos PRIMARY KEY (pk_equipo),
	CONSTRAINT FK_DIM_Equipos_Est FOREIGN KEY (id_estado_EEU) REFERENCES dbo.DIM_Estados_EEUU (pk_estado_EEU),
	CONSTRAINT FK_DIM_Equipos_Div FOREIGN KEY (id_division) REFERENCES dbo.DIM_Divisiones (pk_division)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Estados_EEUU 
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Estados_EEUU (
    [pk_estado_EEU] 		[INT] NOT NULL,
    [codigo]			 	[NVARCHAR](50) NULL,
    [nombre]			 	[NVARCHAR](255) NULL,
	[nombre_oficial]	 	[NVARCHAR](100) NULL,
	[superficie]		 	[FLOAT] NULL,
	[poblacion]		 		[BIGINT] NULL,
	[capital]			 	[NVARCHAR](100) NULL,
	[densidadPoblacion] 	[FLOAT] NULL,
    CONSTRAINT PK_DIM_Estados_EEUU PRIMARY KEY (pk_estado_EEU)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Jugadas
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Jugadas (
    [pk_jugada] 		[INT] NOT NULL,
    [codigo_jugada] 	[NVARCHAR](50) NULL,
    [dec_jugada] 		[NVARCHAR](255) NULL,
    CONSTRAINT PK_DIM_Jugadas PRIMARY KEY (pk_jugada)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Jugadores 
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Jugadores (
    [pk_jugador] 		[INT] NOT NULL,
    [liga] 				[NVARCHAR](50) NULL,
    [cod_jugador] 		[NVARCHAR](50) NULL,
	[nombre] 			[NVARCHAR](255) NULL,
	[posicion_juego] 	[NVARCHAR](100) NULL,
	[sexo] 				[NVARCHAR](50) NULL,
	[activo] 			[NVARCHAR](50) NULL,
	[altura] 			[NVARCHAR](50) NULL,
	[peso] 				[NVARCHAR](50) NULL,
	[shoots] 			[NVARCHAR](50) NULL,
	[universidad] 		[NVARCHAR](255) NULL,
	[fecha_nacimiento] 	[DATE] NULL,
	[ciudad_nacimiento] [NVARCHAR](255) NULL,
	[career_AST] 		[FLOAT] NULL,
	[career_FG%] 		[FLOAT] NULL,
	[career_FG3%] 		[FLOAT] NULL,
	[career_FT%] 		[FLOAT] NULL,
	[career_G] 			[FLOAT] NULL,
	[career_PER] 		[FLOAT] NULL,
	[career_PTS] 		[FLOAT] NULL,
	[career_TRB] 		[FLOAT] NULL,
	[career_WS] 		[FLOAT] NULL,
	[career_eFG%] 		[FLOAT] NULL,
    CONSTRAINT PK_DIM_Jugadores PRIMARY KEY (pk_jugador)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Minutos
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Minutos (
    [pk_minutoSegundo] 	[INT] NOT NULL,
    [minuto]		 	[INT] NULL,
    [segundo]	 		[INT] NULL,
	[minutoSegundo]	 	[NVARCHAR](50) NULL,
    CONSTRAINT PK_DIM_Minutos PRIMARY KEY (pk_minutoSegundo)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Partidos
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Partidos (
    [pk_partido] 	[INT] NOT NULL,
    [partido]		[NVARCHAR](50) NULL,
    [playoffs]	 	[NVARCHAR](50) NULL,
	[temporada]	 	[NVARCHAR](50) NULL,
	[resultado]	 	[NVARCHAR](50) NULL,
    CONSTRAINT PK_DIM_Partidos PRIMARY KEY (pk_partido)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_PosicionesJuego
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_PosicionesJuego (
    [pk_posicion_juego]	[INT] NOT NULL,
    [codigo_posicion]	[NVARCHAR](10) NULL,
    [desc_posicion_EN]	[NVARCHAR](50) NULL,
	[desc_posicion_ES]	[NVARCHAR](50) NULL,
	[num_posicion] 		[INT] NULL,
    CONSTRAINT PK_DIM_PosicionesJuego PRIMARY KEY (pk_posicion_juego)
);
------------------------------------------------------------------------------------------------
--
-- Create table DIM_Tiempo
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.DIM_Tiempo (
    [pk_date]	[INT] NOT NULL,
    [date_year]	[INT] NULL,
    [date_month][INT] NULL DEFAULT 10,
	[date_day]	[INT] NULL DEFAULT 1,
	[date_date]	[DATE] NULL,
	[temporada]	[NVARCHAR](50) NULL,
    CONSTRAINT PK_DIM_Tiempo PRIMARY KEY (pk_date)
);
------------------------------------------------------------------------------------------------
--
-- HECHOS
--
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--
-- Create table FACT_FREE_THROWS
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.FACT_FREE_THROWS (
    [id_temporada] 	[INT] NULL,
    [id_partido] 	[INT] NULL,
    [id_jugador]	[INT] NULL,
	[id_jugada]		[INT] NULL,
	[id_minuto]		[INT] NULL,
	[periodo_juego]	[INT] NULL,
	[resultado_tiro_libre] [FLOAT] NULL,
    CONSTRAINT FK_FACT_FT_Temp FOREIGN KEY (id_temporada) REFERENCES dbo.DIM_Tiempo (pk_date),
	CONSTRAINT FK_FACT_FT_Part FOREIGN KEY (id_partido) REFERENCES dbo.DIM_Partidos (pk_partido),
	CONSTRAINT FK_FACT_FT_Jug FOREIGN KEY (id_jugador) REFERENCES dbo.DIM_Jugadores (pk_jugador),
	CONSTRAINT FK_FACT_FT_Play FOREIGN KEY (id_jugada) REFERENCES dbo.DIM_Jugadas (pk_jugada),
	CONSTRAINT FK_FACT_FT_Min FOREIGN KEY (id_minuto) REFERENCES dbo.DIM_Minutos (pk_minutoSegundo)
);
------------------------------------------------------------------------------------------------
--
-- Create table FACT_SEASON_STATS
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.FACT_SEASON_STATS (
    [id_season] 	[INT] NULL,
    [id_player] 	[INT] NULL,
    [id_team]		[INT] NULL,
	[id_position]	[INT] NULL,
	[league]		[NVARCHAR](4) NULL,
	[GP]			[FLOAT] NULL,
	[PTS]			[FLOAT] NULL,
	[MIN]			[FLOAT] NULL,
	[FGM]			[FLOAT] NULL,
	[FGA]			[FLOAT] NULL,
	[FG%]			[FLOAT] NULL,
	[_3PM]		[FLOAT] NULL,
	[_3PA]		[FLOAT] NULL,
	[_3P%]		[FLOAT] NULL,
	[_2PM]		[FLOAT] NULL,
	[_2PA]		[FLOAT] NULL,
	[_2P%]		[FLOAT] NULL,
	[FTM]		[FLOAT] NULL,
	[FTA]		[FLOAT] NULL,
	[FT%]		[FLOAT] NULL,
	[eFG%]		[FLOAT] NULL,
	[OREB]		[FLOAT] NULL,
	[DREB]		[FLOAT] NULL,
	[REB]		[FLOAT] NULL,
	[AST]		[FLOAT] NULL,
	[TOV]		[FLOAT] NULL,
	[STL]		[FLOAT] NULL,
	[BLK]		[FLOAT] NULL,
	[PF]		[FLOAT] NULL,
	[EFF]		[FLOAT] NULL,
    CONSTRAINT FK_FACT_SS_Sea FOREIGN KEY (id_season) REFERENCES dbo.DIM_Tiempo (pk_date),
	CONSTRAINT FK_FACT_SS_Jug FOREIGN KEY (id_player) REFERENCES dbo.DIM_Jugadores (pk_jugador),
	CONSTRAINT FK_FACT_SS_Equip FOREIGN KEY (id_team) REFERENCES dbo.DIM_Equipos (pk_equipo),
	CONSTRAINT FK_FACT_SS_Pos FOREIGN KEY (id_position) REFERENCES dbo.DIM_PosicionesJuego (pk_posicion_juego)
);