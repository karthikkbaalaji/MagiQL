INSERT INTO [dbo].[ReportColumnMapping]
           ([DataSourceTypeId]
           ,[UniqueName]
           ,[DisplayName]
           ,[MainCategory]
           ,[KnownTable]
           ,[FieldName]
           ,[IsCalculated]
           ,[FieldAggregationMethod]
           ,[DbType]
		   ,[Selectable]
           ) 
SELECT 
3 as [DataSourceTypeId]
, 'Calculated_MatchHomeGoals' as [UniqueName]
, 'Home Team Goals' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'Match' as [KnownTable]
, 'IFTHENELSE(Match_HomeTeamID == Team_ID, PlayerMatchStatistics_Goals, 0)' as [FieldName]
, 1 as [IsCalculated]
, 'Sum' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 

UNION 

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_MatchAwayGoals' as [UniqueName]
, 'Away Team Goals' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'Match' as [KnownTable]
, 'IFTHENELSE(Match_AwayTeamID == Team_ID, PlayerMatchStatistics_Goals, 0)' as [FieldName]
, 1 as [IsCalculated]
, 'Sum' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable]

 UNION 

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatsManOfTheMatchCount' as [UniqueName]
, 'Man Of The Match Count' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'IFTHENELSE(PlayerMatchStatistics_ManOfTheMatch == 1, 1, 0)' as [FieldName]
, 1 as [IsCalculated]
, 'Sum' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 


 UNION 

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatYellowCardCount' as [UniqueName]
, 'Yellow Card Count' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'IFTHENELSE(PlayerMatchStatistics_YellowCard == 1, 1, 0)' as [FieldName]
, 1 as [IsCalculated]
, 'Sum' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 


 UNION 

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatRedCardCount' as [UniqueName]
, 'Red Card Count' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'IFTHENELSE(PlayerMatchStatistics_RedCard == 1, 1, 0)' as [FieldName]
, 1 as [IsCalculated]
, 'Sum' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 


 UNION 

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatsMinutesPlayed' as [UniqueName]
, 'Minutes Played' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'PlayerMatchStatistics_EndMinute - PlayerMatchStatistics_StartMinute' as [FieldName]
, 1 as [IsCalculated]
, 'Sum' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 

UNION 

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatsSubsOff' as [UniqueName]
, 'Substitutions Off' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'IFTHENELSE(PlayerMatchStatistics_EndMinute < 60, 1, 0)' as [FieldName]
, 1 as [IsCalculated]
, 'Sum' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 


UNION 

/*
SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatsGoalsPerGame' as [UniqueName]
, 'Goals Per Game' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'PlayerMatchStatistics_Goals / PlayerMatchStatistics_Count' as [FieldName]
, 1 as [IsCalculated]
, 'Average' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 

UNION 
*/

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatsMinutesPerGoal' as [UniqueName]
, 'Minutes per Goal' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'Calculated_PlayerStatsMinutesPlayed / PlayerMatchStatistics_Goals' as [FieldName]
, 1 as [IsCalculated]
, 'Average' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 

UNION 

SELECT 
3 as [DataSourceTypeId]
, 'Calculated_PlayerStatsDistancePerTackle' as [UniqueName]
, 'Distance Per Tackle' as [DisplayName]
, 'Calculated' as [MainCategory]
, 'PlayerMatchStatistics' as [KnownTable]
, 'PlayerMatchStatistics_DistanceCoveredKilometres / PlayerMatchStatistics_Tackles' as [FieldName]
, 1 as [IsCalculated]
, 'Average' as [FieldAggregationMethod]
, 'Int32' as [DbType]
, 1 as [Selectable] 
 