SELECT
    batting_team,
    SUM(TRY_CAST(total_runs AS INT)) AS total_runs
FROM dbo.cleaned_deliveries
GROUP BY batting_team
ORDER BY total_runs DESC;