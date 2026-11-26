SELECT
    toss_decision,
    COUNT(*) AS total_decisions
FROM dbo.cleaned_matches
GROUP BY toss_decision
ORDER BY total_decisions DESC;