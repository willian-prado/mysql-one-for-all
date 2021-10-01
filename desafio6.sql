CREATE VIEW faturamento_atual AS
    SELECT 
        MIN((SELECT 
                p.price
            FROM
                SpotifyClone.Plan AS p
            WHERE
                p.id = u.plan_id)) AS `faturamento_minimo`,
        MAX((SELECT 
                p.price
            FROM
                SpotifyClone.Plan AS p
            WHERE
                p.id = u.plan_id)) AS `faturamento_maximo`,
        ROUND(AVG((SELECT 
                        p.price
                    FROM
                        SpotifyClone.Plan AS p
                    WHERE
                        p.id = u.plan_id)),
                2) AS `faturamento_medio`,
        SUM((SELECT 
                p.price
            FROM
                SpotifyClone.Plan AS p
            WHERE
                p.id = u.plan_id)) AS `faturamento_total`
    FROM
        SpotifyClone.User AS u;
