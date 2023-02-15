with
  New as (
    select id as COL0, url as COL1, upperurlcolumn as COL2, Host as COL3 from {{ ref('New') }}
  ),
  TMP as (
    SELECT New.col0 AS col_0, New.col1 AS col_1, New.col2 AS col_2, New.col3 AS col_3 FROM New
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn, COL_3 as Host from TMP