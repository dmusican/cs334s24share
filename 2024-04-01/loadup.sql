drop table assignments;
drop table recipes;
drop table ingredients;

\i recipes.sql
\i ingredients.sql
\i assignments.sql

\copy recipes from recipes.data
\copy ingredients from ingredients.data
\copy assignments from assignments.data
