WITH TeamMatches AS (
    SELECT season, team1 AS team, winner
    FROM dbo.cleaned_matches

    UNION ALL

    SELECT season, team2 AS team, winner
    FROM dbo.cleaned_matches
),
TeamStats AS (
    SELECT
        season,
        team,
        COUNT(*) AS matches_played,
        SUM(CASE WHEN team = winner THEN 1 ELSE 0 END) AS matches_won
    FROM TeamMatches
    GROUP BY season, team
)
SELECT
    season,
    team,
    matches_played,
    matches_won,
    ROUND(
        CAST(matches_won AS FLOAT) * 100 / matches_played, 2
    ) AS win_percentage
FROM TeamStats
ORDER BY season, win_percentage DESC;