WITH TeamStats AS (
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
)
SELECT
    team,
    matches_played,
    matches_won,
    ROUND(
        CAST(matches_won AS FLOAT) * 100 / matches_played, 2
    ) AS win_percentage
FROM TeamStats
ORDER BY win_percentage DESC;