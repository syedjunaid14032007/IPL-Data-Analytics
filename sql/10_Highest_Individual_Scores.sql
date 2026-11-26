SELECT TOP 10
    batter,
    match_id,
    SUM(TRY_CAST(batsman_runs AS INT)) AS runs_scored
FROM dbo.cleaned_deliveries
GROUP BY batter, match_id
ORDER BY runs_scored DESC;