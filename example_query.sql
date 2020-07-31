WITH claims AS
(SELECT State,COUNT(State) totalclaims FROM names GROUP BY State ORDER BY COUNT(State) DESC)

SELECT * FROM
(SELECT rowid, claims.State state, totalclaims, pop, totalclaims * 1./ pop * 1. percapclaims FROM claims
LEFT JOIN states ON states.state == claims.State)
ORDER BY percapclaims DESC;
