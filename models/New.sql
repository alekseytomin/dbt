with
  urls as (
    select id as COL0, url as COL1, upperurlcolumn as COL2 from {{ ref('urls') }}
  ),
  TMP as (
    SELECT urls.col0 as col_0, urls.col1 as col_1, urls.col2 as col_2, (CASE  WHEN (select array_agg(i) from (select (regexp_matches(urls.col1, '.*?((?<=:\/\/)[a-z0-9-]+(?:\.[a-z0-9-]+)*\.[a-z]{2,}).*?', 'g'))[1] i) t) IS NULL THEN jsonb_path_query_first('[]'::jsonb, (jsonpath ('$[0]'))) ELSE jsonb_path_query_first(to_jsonb((select array_agg(i) from (select (regexp_matches(urls.col1, '.*?((?<=:\/\/)[a-z0-9-]+(?:\.[a-z0-9-]+)*\.[a-z]{2,}).*?', 'g'))[1] i) t)), (jsonpath ('$[0]'))) END #>> '{}') as col_3 FROM urls
  )

select COL_0 as id, COL_1 as url, COL_2 as upperurlcolumn, COL_3 as Host from TMP