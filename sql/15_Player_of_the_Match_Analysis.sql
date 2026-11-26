SELECT TOP 10
    player_of_match,
    COUNT(*) AS total_awards
FROM dbo.cleaned_matches
WHERE player_of_match IS NOT NULL
GROUP BY player_of_match
ORDER BY total_awards DESC;