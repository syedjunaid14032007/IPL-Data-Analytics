SELECT TOP 10
    bowler,
    COUNT(*) AS total_wickets
FROM dbo.cleaned_deliveries
WHERE dismissal_kind IN (
    'bowled',
    'caught',
    'caught and bowled',
    'lbw',
    'stumped',
    'hit wicket',
    'hit the ball twice',
    'handled the ball'
)
GROUP BY bowler
ORDER BY total_wickets DESC;