SELECT
    season,
    winner AS team,
    COUNT(*) AS total_wins
FROM dbo.cleaned_matches
WHERE winner IS NOT NULL
GROUP BY season, winner
ORDER BY season, total_wins DESC;