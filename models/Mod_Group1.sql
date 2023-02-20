with
  Mod_urls as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('Mod_urls') }}
  ),
  RETABLE_RuntimeJobTable_1782 as (
   SELECT col0 AS col_0, col1 AS col_1, col2 AS col_2 FROM Mod_urls WHERE (Mod_urls.col0) < 100
  ),
  Mod_Group1 as (
    select COL_0 as COL0, COL_1 as COL1, COL_2 as COL2 from RETABLE_RuntimeJobTable_1782
  ),
  TMP as (
   SELECT col0 AS col_0, col1 AS col_1, col2 AS col_2 FROM Mod_Group1 WHERE (Mod_Group1.col0) > 0
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP