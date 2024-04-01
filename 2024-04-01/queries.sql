   SELECT DISTINCT I.iid,
          I.name
     FROM ingredients I,
          assignments A,
          recipes R
    WHERE I.iid = A.iid AND
          R.rid = A.rid AND
          (
          R.name = 'Spiced Pumpkin Soup'
       OR R.name = 'Sugar Cookie Icing'
          );
