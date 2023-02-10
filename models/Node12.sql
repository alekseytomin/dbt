with
  TMP as (
    SELECT RETABLE_0.id AS col_0, RETABLE_0.url AS col_1, RETABLE_0.upperurlcolumn AS col_2 FROM {{ source('main_dbt', 'urls3') }} RETABLE_0
  )
  
  
  

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn from TMP
