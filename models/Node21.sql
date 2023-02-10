with
  Node11 as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Node11') }}
  ),
  TMP as (
   SELECT col0 AS col_0, col1 AS col_1, col2 AS col_2 FROM Node11 WHERE strpos(Node11.col1, 'com:') > 0
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP