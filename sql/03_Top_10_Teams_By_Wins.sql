SELECT TOP 10
    winner AS team,
    COUNT(*) AS total_wins
FROM dbo.cleaned_matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY total_wins DESC;