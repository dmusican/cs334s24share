-- Aggregation goodness
   SELECT max(R.year) as maxyear
     FROM recipes R;

select I.iid, I.name, max(A.servings) as maxservings
from   assignments A, ingredients I
having  A.iid=I.iid
and max(A.servings) > 2
group by I.iid, I.name;
