------------------------------------------------------------------------------------------------
--
-- Create table STG_WNBA_Players_list
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_WNBA_Players_list (
    [player]	[NVARCHAR](255) NULL,
    [active]	[NVARCHAR](255) NULL
 );

------------------------------------------------------------------------------------------------
--
-- Create table STG_NBA_Players_list
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_NBA_Players_list (
    [player]	[NVARCHAR](255) NULL,
    [active]	[NVARCHAR](255) NULL
 );
------------------------------------------------------------------------------------------------
--
-- Create table STG_NBA_Players_data
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_NBA_Players_data (
    [id_]			[NVARCHAR](50) NULL,
    [birthDate]		[DATE] NULL,
    [birthPlace]	[NVARCHAR](255) NULL,
	[career_AST]	[FLOAT] NULL,
	[career_FG%]	[FLOAT] NULL,
	[career_FG3%]	[FLOAT] NULL,
	[career_FT%]	[FLOAT] NULL,
	[career_G]		[FLOAT] NULL,
	[career_PER]	[FLOAT] NULL,
	[career_PTS]	[FLOAT] NULL,
	[career_TRB]	[FLOAT] NULL,
	[career_WS]		[FLOAT] NULL,
	[career_eFG%]	[FLOAT] NULL,
	[college]		[NVARCHAR](255) NULL,
	[height]		[NVARCHAR](50) NULL,
	[highSchool]	[NVARCHAR](255) NULL,
	[name]			[NVARCHAR](255) NULL,
	[position]		[NVARCHAR](100) NULL,
	[shoots]		[NVARCHAR](50) NULL,
	[weight]		[NVARCHAR](50) NULL
 );
------------------------------------------------------------------------------------------------
--
-- Create table STG_Team_Codes
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_Team_Codes (
    [league]	[NVARCHAR] (50) NULL,
    [team]	[NVARCHAR] (255) NULL,
    [code]	[NVARCHAR] (50) NULL
 );
------------------------------------------------------------------------------------------------
--
-- Create table STG_EEUU
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_EEUU (
    [estado]			[NVARCHAR](255) NULL,
    [nombre_oficial]	[NVARCHAR](100) NULL,
    [superficie]		[FLOAT] NULL,
	[abreviatura]		[NVARCHAR](50) NULL,
	[poblacion_2010]	[BIGINT] NULL,
	[densidad_pobl]		[FLOAT] NULL,
	[capital]			[NVARCHAR](100) NULL
 );
------------------------------------------------------------------------------------------------
--
-- Create table STG_NBA_free_throws
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_NBA_free_throws (
    [end_result]	[NVARCHAR](50) NULL,
    [game]		[NVARCHAR](50) NULL,
    [game_id]	[FLOAT] NULL,
	[period]	[FLOAT] NULL,
	[play]		[NVARCHAR](255) NULL,
	[player]	[NVARCHAR](255) NULL,
	[playoffs]	[NVARCHAR](50) NULL,
	[score]		[NVARCHAR](50) NULL,
	[season]	[NVARCHAR](50) NULL,
	[shot_made]	[INT] NULL,
	[time_]		[NVARCHAR](50) NULL
);
------------------------------------------------------------------------------------------------
--
-- Create table STG_WNBA_Teams
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_WNBA_Teams (
    [id#]			[INT] NULL,
    [conferencia]	[NVARCHAR](100) NULL,
    [equipo]		[NVARCHAR](255) NULL,
	[ciudad]		[NVARCHAR](255) NULL,
	[estado]		[NVARCHAR](255) NULL
 );
------------------------------------------------------------------------------------------------
--
-- Create table STG_NBA_Teams
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_NBA_Teams (
    [conferencia]	[NVARCHAR](100) NULL,
    [division]		[NVARCHAR](100) NULL,
    [equipo]		[NVARCHAR](255) NULL,
	[ciudad]		[NVARCHAR](255) NULL,
	[estado]		[NVARCHAR](255) NULL,
	[pabellon]		[NVARCHAR](255) NULL,
	[fundado]		[INT] NULL,
	[patrocinio]	[NVARCHAR](255) NULL
 );
------------------------------------------------------------------------------------------------
--
-- Create table STG_NBA_Seasons_Stats_1950_2017 
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_NBA_Seasons_Stats_1950_2017 (
    [id#]	[INT] NULL,
    [year_]	[INT] NULL,
    [player]	[NVARCHAR](255) NULL,
	[pos]	[NVARCHAR](100) NULL,
	[age]	[INT] NULL,
	[Tm]	[NVARCHAR](255) NULL,
	[G]		[FLOAT] NULL,
	[GS]	[FLOAT] NULL,
	[MP]	[FLOAT] NULL,
	[PER]	[FLOAT] NULL,
	[TS%]	[FLOAT] NULL,
	[_3PAr]	[FLOAT] NULL,
	[FTr]	[FLOAT] NULL,
	[ORB%]	[FLOAT] NULL,
	[DRB%]	[FLOAT] NULL,
	[TRB%]	[FLOAT] NULL,
	[AST%]	[FLOAT] NULL,
	[STL%]	[FLOAT] NULL,
	[BLK%]	[FLOAT] NULL,
	[TOV%]	[FLOAT] NULL,
	[USG%]	[FLOAT] NULL,
	[OWS]	[FLOAT] NULL,
	[DWS]	[FLOAT] NULL,
	[WS]	[FLOAT] NULL,
	[WSx48]	[FLOAT] NULL,
	[OBPM]	[FLOAT] NULL,
	[DBPM]	[FLOAT] NULL,
	[BPM]	[FLOAT] NULL,
	[VORP]	[FLOAT] NULL,
	[FG]	[FLOAT] NULL,
	[FGA]	[FLOAT] NULL,
	[FG%]	[FLOAT] NULL,
	[_3P]	[FLOAT] NULL,
	[_3PA]	[FLOAT] NULL,
	[_3P%]	[FLOAT] NULL,
	[_2P]	[FLOAT] NULL,
	[_2PA]	[FLOAT] NULL,
	[_2P%]	[FLOAT] NULL,
	[eFG%]	[FLOAT] NULL,
	[FT]	[FLOAT] NULL,
	[FTA]	[FLOAT] NULL,
	[FT%]	[FLOAT] NULL,
	[ORB]	[FLOAT] NULL,
	[DRB]	[FLOAT] NULL,
	[TRB]	[FLOAT] NULL,
	[AST]	[FLOAT] NULL,
	[STL]	[FLOAT] NULL,
	[BLK]	[FLOAT] NULL,
	[TOV]	[FLOAT] NULL,
	[PF]	[FLOAT] NULL,
	[PTS]	[FLOAT] NULL
 );
------------------------------------------------------------------------------------------------
--
-- Create table STG_WNBA_Seasons_Stats_2005_2017 
--
------------------------------------------------------------------------------------------------
CREATE TABLE dbo.STG_WNBA_Seasons_Stats_2005_2017 (
    [id_]	[INT] NULL,
    [data_]	[NVARCHAR](255) NULL,
    [type_]	[NVARCHAR](255) NULL,
	[stat]	[NVARCHAR](255) NULL
 );
