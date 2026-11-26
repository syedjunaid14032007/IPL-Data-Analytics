SELECT TOP 10
    m.id AS match_id,
    m.season,
    m.winner,
    m.target_runs,
    SUM(TRY_CAST(d.total_runs AS INT)) AS chase_runs
FROM dbo.cleaned_matches m
JOIN dbo.cleaned_deliveries d
    ON m.id = d.match_id
WHERE d.inning = 2
  AND m.result = 'runs'
  AND m.winner IS NOT NULL
GROUP BY
    m.id,
    m.season,
    m.winner,
    m.target_runs
ORDER BY chase_runs DESC;