-- Select count(*)
-- FROM tutorial.aapl_historical_stock_price

/*
This is the same as count(*)
-- Select count(1)
-- FROM tutorial.aapl_historical_stock_price8
*/

/* 
Practice problem: Write a query to count the number of non-null rows in the low column.
*/

-- Select count(low)
-- From tutorial.aapl_historical_stock_price

/*
Practice problem (COUNT):
Write a query that determines counts of every single column. With these counts, can you tell which column has the most null valuestutorial.aapl_historical_stock_price
*/

-- Select count(*)
-- From tutorial.aapl_historical_stock_price

/*
Practica problems (SUM/COUNT)
Write a query to calculate the average opening price (hint: you will need to use both COUNT and SUM, as well as some simple arithmetic.).
*/

-- Select sum(open)/count(open) as AVG_OPEN_PRICE
-- FROM tutorial.aapl_historical_stock_price

/*
Practice problems (min/max): What was Apple's lowest stock price (at the time of this data collection)?
*/

-- SELECT MIN(low)
--   FROM tutorial.aapl_historical_stock_price
/*Pratice problem:  What was the highest single-day increase in Apple's share value?*/
-- SELECT MAX(close - open)
-- FROM tutorial.aapl_historical_stock_price

/*
Practice problems (AVG): Write a query that calculates the average daily trade volume for Apple stock.
*/

-- SELECT AVG(volume) AS avg_volume
--   FROM tutorial.aapl_historical_stock_price

/*
Practice problem (GROUP BY): Calculate the total number of shares traded each month. Order your results chronologically.
*/

-- SELECT year, month, SUM(volume) AS volume_sum
-- FROM tutorial.aapl_historical_stock_price
-- GROUP BY year, month
-- ORDER BY year, month

/*
Practice problem (GROUP BY USING NUMBER INSTEAD OF COLUMN NAMES): Write a query to calculate the average daily price change in Apple stock, grouped by year.
*/

-- SELECT year, AVG(close - open) AS avg_daily_change
-- FROM tutorial.aapl_historical_stock_price
-- GROUP BY 1
--   ORDER BY 1

/*
Practice problem (MIN/MAX, GROUP BY NUMBERS INSTEAD OF COLUMN NAMES): Write a query that calculates the lowest and highest prices that Apple stock achieved each month.
*/

-- SELECT year, month, MIN(low) AS lowest_price, 
-- MAX(high) AS highest_price
-- FROM tutorial.aapl_historical_stock_price
-- GROUP BY 1, 2
-- ORDER BY 1, 2

/*
Exaple of HAVING clause
*/

-- SELECT year, month, MAX(high) AS month_high
-- FROM tutorial.aapl_historical_stock_price
-- GROUP BY year, month
-- HAVING MAX(high) > 400
-- ORDER BY year, month

/*
•	Practice problem (CASE): Write a query that includes a column that is flagged "yes" when a player is from California, and sort the results with those players first.
*/

-- SELECT player_name, state,
-- CASE WHEN state = 'CA' THEN 'yes'
-- ELSE NULL END AS from_california
-- FROM benn.college_football_players
-- ORDER BY 3

/*
Practice problems: Write a query that includes players' names and a column that classifies them into four categories based on height. 
Keep in mind that the answer we provide is only one of many possible answers, since you could divide players' heights in many ways.
*/

-- SELECT player_name, height,
-- CASE WHEN height > 74 THEN 'over 74'
-- WHEN height > 72 AND height <= 74 THEN '73-74'
-- WHEN height > 70 AND height <= 72 THEN '71-72'
-- ELSE 'under 70' END AS height_group
-- FROM benn.college_football_players

/*
Practice problem (CASE): Write a query that selects all columns from benn.college_football_players and adds an additional column that displays the player's name if that player is a junior or senior.
*/

-- SELECT *,
-- CASE WHEN year IN ('JR', 'SR') THEN player_name 
-- ELSE NULL END AS upperclass_player_name
-- FROM benn.college_football_players

/*
Practice problem (CASE WITH AGGREGATION FUNCTIONS): Write a query that counts the number of 300lb+ players for each of the following regions: West Coast (CA, OR, WA), Texas, and Other (everywhere else).
*/

-- SELECT CASE WHEN state IN ('CA', 'OR', 'WA') THEN 'West Coast'
--             WHEN state = 'TX' THEN 'Texas'
--       ELSE 'Other' END AS arbitrary_regional_designation,
--       COUNT(1) AS players
--   FROM benn.college_football_players
--   WHERE weight >= 300
--   GROUP BY 1

/*
PracticE problem (CASE WITH AGGREGATION FUNCTIONS): Write a query that calculates the combined weight of all underclass players (FR/SO) 
in California as well as the combined weight of all upperclass players (JR/SR) in California.
*/

-- SELECT CASE WHEN year IN ('FR', 'SO') THEN 'underclass'
--             WHEN year IN ('JR', 'SR') THEN 'upperclass'
--             ELSE NULL END AS class_group,
--   SUM(weight) AS combined_player_weight
--   FROM benn.college_football_players
-- WHERE state = 'CA'
-- GROUP BY 1

/*
•	Practice problem (CASE INSIDE OF AGGREGATION): Write a query that displays the number of players in each state, with FR, SO, JR, and SR players in separate 
columns and another column for the total number of players. Order results such that states with the most players come first.
*/

-- SELECT state,
--       COUNT(CASE WHEN year = 'FR' THEN 1 ELSE NULL END) AS fr_count,
--       COUNT(CASE WHEN year = 'SO' THEN 1 ELSE NULL END) AS so_count,
--       COUNT(CASE WHEN year = 'JR' THEN 1 ELSE NULL END) AS jr_count,
--       COUNT(CASE WHEN year = 'SR' THEN 1 ELSE NULL END) AS sr_count,
--       COUNT(1) AS total_players
--   FROM benn.college_football_players
-- GROUP BY state
-- ORDER BY total_players DESC

/*
Practice problem (CASE INSIDE OF AGGREGATION): Write a query that shows the number of players at schools with names that start with A through M, and the number at schools with names starting with N - Z.
*/

-- SELECT CASE WHEN school_name < 'n' THEN 'A-M'
--             WHEN school_name >= 'n' THEN 'N-Z'
--             ELSE NULL END AS school_name_group,
--       COUNT(1) AS players
--   FROM benn.college_football_players
-- GROUP BY 1

/*
Practice problem (DISTINCT): Write a query that returns the unique values in the year column, in chronological order
*/

-- SELECT DISTINCT year
--     FROM tutorial.aapl_historical_stock_price
-- ORDER BY year

/*
Practice problem (DISTINCT IN AGGREGATION): Write a query that counts the number of unique values in the month column for each year.
*/

-- SELECT year, COUNT(DISTINCT month) AS months_count
-- FROM tutorial.aapl_historical_stock_price
-- GROUP BY year
-- ORDER BY year

/*
Practice problem (DISTINCT IN AGGREGATION): Write a query that separately counts the number of unique values in the month column and the number of unique values in the `year` column.
*/

-- SELECT COUNT(DISTINCT year) AS years_count,
--       COUNT(DISTINCT month) AS months_count
-- FROM tutorial.aapl_historical_stock_price

/*
•	Practice problems (JOIN): Write a query that selects the school name, player name, position, and weight for every player in Georgia, 
ordered by weight (heaviest to lightest). Be sure to make an alias for the table, and to reference all column names in relation to the alias.
*/

-- SELECT players.school_name,
--       players.player_name,
--       players.position,
--       players.weight
--   FROM benn.college_football_players players
-- WHERE players.state = 'GA'
-- ORDER BY players.weight DESC

/*
Practice problems(INNER JOIN): Write a query that displays player names, school names and conferences for schools in the "FBS (Division I-A Teams)" division.
*/

SELECT players.player_name,
       players.school_name,
       teams.conference
  FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
    ON teams.school_name = players.school_name
 WHERE teams.division = 'FBS (Division I-A Teams)'
 
/*
Practice problem (INNER JOIN): Write a query that performs an inner join between the tutorial.crunchbase_acquisitions table and the tutorial.
crunchbase_companies table, but instead of listing individual rows, count the number of non-null rows in each table.
*/

-- SELECT COUNT(companies.permalink) AS companies_rowcount,
--       COUNT(acquisitions.company_permalink) AS acquisitions_rowcount
--   FROM tutorial.crunchbase_companies companies
--   JOIN tutorial.crunchbase_acquisitions acquisitions
--     ON companies.permalink = acquisitions.company_permalink

/*
Practice problem: Write a query that performs an inner join between the tutorial.crunchbase_acquisitions Modify the query 
above to be a LEFT JOIN. Note the difference in results
*/

SELECT COUNT(companies.permalink) AS companies_rowcount,
       COUNT(acquisitions.company_permalink) AS acquisitions_rowcount
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
    ON companies.permalink = acquisitions.company_permalink

/*
Practice problem (LEFT JOIN + Aggregation functions) Count the number of unique companies (don't double-count companies) 
and unique acquired companies by state. Do not include results for which there is no state data, and order by the number 
of acquired companies from highest to lowest.
*/

-- SELECT companies.state_code,
--       COUNT(DISTINCT companies.permalink) AS unique_companies,
--       COUNT(DISTINCT acquisitions.company_permalink) AS unique_companies_acquired
--   FROM tutorial.crunchbase_companies companies
--   LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
--     ON companies.permalink = acquisitions.company_permalink
-- WHERE companies.state_code IS NOT NULL
-- GROUP BY 1
-- ORDER BY 3 DESC

/*
Practice problem(RIGHT JOIN): Rewrite the previous practice query in which you counted total and acquired 
companies by state, but with a RIGHT JOIN instead of a LEFT JOIN. The goal is to produce the exact same results.
*/

-- SELECT companies.state_code,
--       COUNT(DISTINCT companies.permalink) AS unique_companies,
--       COUNT(DISTINCT acquisitions.company_permalink) AS acquired_companies
--   FROM tutorial.crunchbase_acquisitions acquisitions
-- RIGHT JOIN tutorial.crunchbase_companies companies
--     ON companies.permalink = acquisitions.company_permalink
-- WHERE companies.state_code IS NOT NULL
-- GROUP BY 1
-- ORDER BY 3 DESC

/*Practice problem (Join-Filtering in the WHERE clause): Write a query that shows a company's name, "status" (found in the Companies table), and 
the number of unique investors in that company. Order by the number of investors from most to fewest. 
Limit to only companies in the state of New York.
*/
-- SELECT companies.name AS company_name,
--       companies.status,
--       COUNT(DISTINCT investments.investor_name) AS unqiue_investors
--   FROM tutorial.crunchbase_companies companies
--   LEFT JOIN tutorial.crunchbase_investments investments
--     ON companies.permalink = investments.company_permalink
-- WHERE companies.state_code = 'NY'
-- GROUP BY 1,2
-- ORDER BY 3 DESC
/*
Practice problem (Join-filtering in the ON statement): Write a query that lists investors based on the number of companies 
in which they are invested. Include a row for companies with no investor, and order from most companies to least.
*/
-- SELECT CASE WHEN investments.investor_name IS NULL THEN 'No Investors'
--             ELSE investments.investor_name END AS investor,
--       COUNT(DISTINCT companies.permalink) AS companies_invested_in
--   FROM tutorial.crunchbase_companies companies
--   LEFT JOIN tutorial.crunchbase_investments investments
--     ON companies.permalink = investments.company_permalink
-- GROUP BY 1
-- ORDER BY 2 DESC


/*
Practice problem (FULL OUTER JOIN): Write a query that joins tutorial.crunchbase_companies and tutorial.crunchbase_investments_part1 
using a FULL JOIN. Count up the number of rows that are matched/unmatched as in the example above.
*/
-- SELECT COUNT(CASE WHEN companies.permalink IS NOT NULL AND investments.company_permalink IS NULL
--                       THEN companies.permalink ELSE NULL END) AS companies_only,
--           COUNT(CASE WHEN companies.permalink IS NOT NULL AND investments.company_permalink IS NOT NULL
--                       THEN companies.permalink ELSE NULL END) AS both_tables,
--           COUNT(CASE WHEN companies.permalink IS NULL AND investments.company_permalink IS NOT NULL
--                       THEN investments.company_permalink ELSE NULL END) AS investments_only
--       FROM tutorial.crunchbase_companies companies
--       FULL JOIN tutorial.crunchbase_investments_part1 investments
--         ON companies.permalink = investments.company_permalink

/*
Practice problem(UNION): Write a query that appends the two crunchbase_investments datasets above (including duplicate values). 
Filter the first dataset to only companies with names that start with the letter "T", and filter the second
to companies with names starting with "M" (both not case-sensitive). Only include the company_permalink, 
company_name, and investor_name columns.
*/

-- SELECT company_permalink,
--       company_name,
--       investor_name
--   FROM tutorial.crunchbase_investments_part1
-- WHERE company_name ILIKE 'T%'
 
-- UNION ALL

-- SELECT company_permalink,
--       company_name,
--       investor_name
--   FROM tutorial.crunchbase_investments_part2
-- WHERE company_name ILIKE 'M%'

/*
Comparison operators with joins with the operator in the ON statement
*/

-- SELECT companies.permalink,
--       companies.name,
--       companies.status,
--       COUNT(investments.investor_permalink) AS investors
--   FROM tutorial.crunchbase_companies companies
--   LEFT JOIN tutorial.crunchbase_investments_part1 investments
--     ON companies.permalink = investments.company_permalink
--   AND investments.funded_year > companies.founded_year + 5
-- GROUP BY 1,2, 3

/*
Comparison operators with joins, with the operator in the WHERE clause
*/
-- SELECT companies.permalink,
--       companies.name,
--       companies.status,
--       COUNT(investments.investor_permalink) AS investors
--   FROM tutorial.crunchbase_companies companies
--   LEFT JOIN tutorial.crunchbase_investments_part1 investments
--     ON companies.permalink = investments.company_permalink
-- WHERE investments.funded_year > companies.founded_year + 5
-- GROUP BY 1,2, 3

/*
Join on multiple tables
*/

-- SELECT companies.permalink,
--       companies.name,
--       investments.company_name,
--       investments.company_permalink
--   FROM tutorial.crunchbase_companies companies
--   LEFT JOIN tutorial.crunchbase_investments_part1 investments
--     ON companies.permalink = investments.company_permalink
--   AND companies.name = investments.company_name

/*
Self join
*/

-- SELECT DISTINCT japan_investments.company_name,
-- 	   japan_investments.company_permalink
--   FROM tutorial.crunchbase_investments_part1 japan_investments
--   JOIN tutorial.crunchbase_investments_part1 gb_investments
--     ON japan_investments.company_name = gb_investments.company_name
--   AND gb_investments.investor_country_code = 'GBR'
--   AND gb_investments.funded_at > japan_investments.funded_at
-- WHERE japan_investments.investor_country_code = 'JPN'
-- ORDER BY 1
