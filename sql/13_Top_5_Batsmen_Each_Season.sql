WITH BatsmanSeasonRuns AS (
    SELECT
        m.season,
        d.batter,
        SUM(TRY_CAST(d.batsman_runs AS INT)) AS total_runs
    FROM dbo.cleaned_deliveries d
    JOIN dbo.cleaned_matches m
        ON d.match_id = m.id
    GROUP BY m.season, d.batter
),
RankedBatsmen AS (
    SELECT *,
        DENSE_RANK() OVER (
            PARTITION BY season
            ORDER BY total_runs DESC
        ) AS ranking
    FROM BatsmanSeasonRuns
)
SELECT
    season,
    batter,
    total_runs,
    ranking
FROM RankedBatsmen
WHERE ranking <= 5
ORDER BY season, ranking;