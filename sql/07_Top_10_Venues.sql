SELECT TOP 10
    venue,
    COUNT(*) AS total_matches
FROM dbo.cleaned_matches
GROUP BY venue
ORDER BY total_matches DESC;