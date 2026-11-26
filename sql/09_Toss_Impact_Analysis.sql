SELECT
    COUNT(*) AS total_matches,
    SUM(CASE
        WHEN toss_winner = winner THEN 1
        ELSE 0
    END) AS toss_winner_match_wins,
    ROUND(
        SUM(CASE
            WHEN toss_winner = winner THEN 1.0
            ELSE 0
        END) * 100.0 / COUNT(*), 2
    ) AS toss_win_percentage
FROM dbo.cleaned_matches
WHERE winner IS NOT NULL;