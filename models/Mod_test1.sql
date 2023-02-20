with
  Mod_Group1 as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Mod_Group1') }}
  ),
  TMP as (
    SELECT Mod_Group1.col0 AS col_0, Mod_Group1.col1 AS col_1, Mod_Group1.col2 AS col_2 FROM Mod_Group1
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP