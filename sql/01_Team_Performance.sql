SELECT
    team,
    COUNT(*) AS matches_played,
    SUM(CASE
        WHEN team = winner THEN 1
        ELSE 0
    END) AS matches_won
FROM (
    SELECT team1 AS team, winner
    FROM dbo.cleaned_matches

    UNION ALL

    SELECT team2 AS team, winner
    FROM dbo.cleaned_matches
) AS team_matches
GROUP BY team
ORDER BY matches_won DESC;