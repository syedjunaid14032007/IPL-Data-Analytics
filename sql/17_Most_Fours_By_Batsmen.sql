SELECT TOP 10
    batter,
    COUNT(*) AS total_fours
FROM dbo.cleaned_deliveries
WHERE TRY_CAST(batsman_runs AS INT) = 4
GROUP BY batter
ORDER BY total_fours DESC;