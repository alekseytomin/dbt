with
  Node21 as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Node21') }}
  ),
  Node22 as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Node22') }}
  ),
  TMP as (
   (( SELECT Node21.col0 AS col_0, Node21.col1 AS col_1, Node21.col2 AS col_2 FROM Node21) UNION ALL ( SELECT Node22.col0 AS col_0, Node22.col1 AS col_1, Node22.col2 AS col_2 FROM Node22))
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP