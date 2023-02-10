with
  Node4 as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Node4') }}
  ),
  TMP as (
    SELECT Node4.col0 AS col_0, Node4.col1 AS col_1, Node4.col2 AS col_2 FROM Node4
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP