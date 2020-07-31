WITH bl AS

(SELECT State, COUNT(State) loans FROM names WHERE RaceEthnicity == "Black or African American"
GROUP BY State),

totalloans AS

(SELECT State, COUNT(State) totalloans FROM names WHERE RaceEthnicity <> "Unanswered" GROUP BY State),


loansandpopulation AS
  (SELECT bl.State STATE,
                   loans blackloans,
                   totalloans,
                   bp.pop bp,
                   states.pop totalpop,
                   '',
                   ROUND(bp.pop * 1. / states.pop * 1.,2) blackpopulationpct,
                   ROUND(loans * 1. / totalloans * 1.,5) blackpopulationpct

   FROM bl
   LEFT JOIN bp ON bp.STATE == bl.State
   LEFT JOIN states ON states.STATE == bl.STATE
   LEFT JOIN totalloans ON totalloans.STATE == bl.STATE)


SELECT * FROM loansandpopulation
ORDER BY
blackpopulationpct DESC;
