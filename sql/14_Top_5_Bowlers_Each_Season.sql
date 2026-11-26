WITH BowlerSeasonWickets AS (
    SELECT
        m.season,
        d.bowler,
        COUNT(*) AS total_wickets
    FROM dbo.cleaned_deliveries d
    JOIN dbo.cleaned_matches m
        ON d.match_id = m.id
    WHERE d.dismissal_kind IN (
        'bowled',
        'caught',
        'caught and bowled',
        'lbw',
        'stumped',
        'hit wicket',
        'hit the ball twice',
        'handled the ball'
    )
    GROUP BY m.season, d.bowler
),
RankedBowlers AS (
    SELECT *,
        DENSE_RANK() OVER (
            PARTITION BY season
            ORDER BY total_wickets DESC
        ) AS ranking
    FROM BowlerSeasonWickets
)
SELECT
    season,
    bowler,
    total_wickets,
    ranking
FROM RankedBowlers
WHERE ranking <= 5
ORDER BY season, ranking;