   CREATE TABLE assignments (
          aid integer PRIMARY KEY,
          rid integer REFERENCES recipes (rid),
          iid integer REFERENCES ingredients (iid),
          servings real
          )
