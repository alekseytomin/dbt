with
  Node12 as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Node12') }}
  ),
  TMP as (
    SELECT Node12.col0 AS col_0, Node12.col1 AS col_1, Node12.col2 AS col_2 FROM Node12 ORDER BY Node12.col1 ASC NULLS LAST , TRUE 
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP