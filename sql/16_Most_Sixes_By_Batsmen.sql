SELECT TOP 10
    batter,
    COUNT(*) AS total_sixes
FROM dbo.cleaned_deliveries
WHERE TRY_CAST(batsman_runs AS INT) = 6
GROUP BY batter
ORDER BY total_sixes DESC;