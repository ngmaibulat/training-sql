### CUBE vs ROLLUP

Consider the grouping columns: column1 and column2.
Here are the grouping sets created by the two GROUP BY subclauses.

CUBE generates these grouping sets:

(column1, column2)
(column1)
(column2)
()

ROLLUP generates these grouping sets:

(column1, column2)
(column1)
()
