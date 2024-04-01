select R.name
   from recipes R, assignments A

          where R.rid

          = A.rid

        AND A.iid = 3

        ;