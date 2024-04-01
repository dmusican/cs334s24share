  SELECT 10 * (R.year / 10) AS decade, AVG(rating)
    FROM recipes R
   WHERE length(R.name) <= 20
   GROUP BY decade
  HAVING AVG(rating) < 8.0;
