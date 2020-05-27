DROP PROCEDURE IF EXISTS GetFavouriteClubHomeMatchesDates;
DELIMITER //
CREATE PROCEDURE GetFavouriteClubHomeMatchesDates( IN club varchar(50), IN currentyear int)
BEGIN
select fix_date from league_fixtures where fix_h_club_id in (
select club_id from club where club_name like concat ("%", club, "%"))
and lg_year like concat ("%", currentyear, "%");
END //
call GetFavouriteClubHomeMatchesDates("Arsenal", 2014);

DROP PROCEDURE IF EXISTS GetCountryWithMostStadiums;
DELIMITER //
CREATE PROCEDURE GetCountryWithMostStadiums()
BEGIN
select fix_date from league_fixtures where fix_h_club_id in (
select club_id from club where club_name like concat ("%", club, "%"))
and lg_year like concat ("%", currentyear, "%");
END //
call GetCountryWithMostStadiums();

select * from test group by country_name;
 
 
 DROP PROCEDURE IF EXISTS GetWinningPlayersInfoForAWorldCupYear;
DELIMITER //
CREATE PROCEDURE GetWinningPlayersInfoForAWorldCupYear(IN world_cup_year int)
BEGIN
select player_full_name, player_position from player where wc_team_id in(
select wc_team_id from worldcup_teams where wc_id like concat ("%", world_cup_year, "%")
 and country_id = (select winning_country_id from worldcup where wc_year like concat ("%", world_cup_year, "%")));
END //
call GetWinningPlayersInfoForAWorldCupYear(2014);

DROP PROCEDURE IF EXISTS GetClubProducedMoreWorldCupPlayersForAYear;
DELIMITER //
CREATE PROCEDURE GetClubProducedMoreWorldCupPlayersForAYear(IN world_cup_year int)
BEGIN
select clubname, max(PlayersCount) as pc from (SELECT CLUBNAME AS CLUBNAME, COUNT(*) AS PlayersCount FROM PLAYER WHERE WC_TEAM_ID IN 
			(SELECT WC_TEAM_ID FROM WORLDCUP_TEAMS WHERE WC_ID like concat ("%", world_cup_year, "%")) GROUP BY CLUBNAME) c;
END //
call GetClubProducedMoreWorldCupPlayersForAYear(2010);
