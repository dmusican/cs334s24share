create table assignments
(
    aid integer primary key,
    rid integer references recipes(rid),
    iid integer references ingredients(iid),
    servings real
)
