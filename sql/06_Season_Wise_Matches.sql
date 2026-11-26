SELECT
    season,
    COUNT(*) AS total_matches
FROM dbo.cleaned_matches
GROUP BY season
ORDER BY season;