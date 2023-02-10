with
  Node3 as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Node3') }}
  ),
  TMP as (
   WITH CTE (col0, col1, col2, DuplicateCount) as (SELECT Node3.col0, Node3.col1, Node3.col2, ROW_NUMBER() OVER(PARTITION BY col1 ORDER BY 1) AS DuplicateCount FROM Node3) SELECT col0 as COL_0, col1 as COL_1, col2 as COL_2 FROM CTE WHERE DuplicateCount = 1
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP