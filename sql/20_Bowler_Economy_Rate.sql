SELECT TOP 10
    bowler,
    SUM(TRY_CAST(total_runs AS INT)) AS runs_conceded,

    SUM(CASE
        WHEN extras_type = 'wides'
          OR extras_type = 'noballs' THEN 0
        ELSE 1
    END) AS legal_balls,

    ROUND(
        SUM(TRY_CAST(total_runs AS FLOAT)) * 6.0 /
        NULLIF(
            SUM(CASE
                WHEN extras_type = 'wides'
                  OR extras_type = 'noballs' THEN 0
                ELSE 1
            END), 0
        ), 2
    ) AS economy_rate

FROM dbo.cleaned_deliveries
GROUP BY bowler
HAVING SUM(CASE
    WHEN extras_type = 'wides'
      OR extras_type = 'noballs' THEN 0
    ELSE 1
END) > 0
ORDER BY economy_rate ASC;