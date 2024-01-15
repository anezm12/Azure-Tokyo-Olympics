-- Count the number of athletes from each country:

SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;


SELECT Rank, Team, Gold, Total, Rank_by_Total FROM medals;

-- Calcutale the total medals won by each country;

SELECT 
Team,
SUM(Gold) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
FROM medals
GROUP BY Team
ORDER BY Total_Gold DESC;

---------------------------
SELECT
    a.Country, 
    COUNT(*) AS TotalAthletes,
    m.Gold AS Total_Gold,
    m.Silver AS Total_Silver,
    m.Bronze AS Total_Bronze
FROM 
    medals m
JOIN
    athletes a ON a.Country = m.Team
GROUP BY 
    a.Country, m.Gold, m.Silver, m.Bronze
ORDER BY TotalAthletes DESC;

------------------
SELECT * FROM medals;
SELECT * FROM athletes;


---------------

SELECT
    a.Country, 
    COUNT(*) AS TotalAthletes,
    m.Gold AS Total_Gold,
    m.Silver AS Total_Silver,
    m.Bronze AS Total_Bronze
FROM 
    medals m
JOIN
    athletes a ON a.Country = m.Team
GROUP BY 
    a.Country, m.Gold, m.Silver, m.Bronze
ORDER BY TotalAthletes DESC;

