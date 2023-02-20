with
  TMP as (
    SELECT RETABLE_SystemTable_0.id AS col_0, RETABLE_SystemTable_0.url AS col_1, RETABLE_SystemTable_0.upperurlcolumn AS col_2 FROM {{ source('main_dbt', 'urls') }} RETABLE_SystemTable_0
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP