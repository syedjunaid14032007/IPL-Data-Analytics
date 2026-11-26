SELECT TOP 10
    batter,
    SUM(TRY_CAST(batsman_runs AS INT)) AS total_runs
FROM dbo.cleaned_deliveries
GROUP BY batter
ORDER BY total_runs DESC;