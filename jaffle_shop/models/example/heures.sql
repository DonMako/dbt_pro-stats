SELECT

JSON_VALUE(json_expr_info, '$.direction') AS destination,
JSON_VALUE(json_expr_info, '$.physical_mode') AS type_train,

JSON_VALUE(json_expr_time, '$.arrival_date_time') AS arrival,
JSON_VALUE(json_expr_time, '$.base_arrival_date_time') AS arrival_base,
JSON_VALUE(json_expr_time, '$.departure_date_time') AS departure,
JSON_VALUE(json_expr_time, '$.base_departure_date_time') AS departure_base,


FROM (
SELECT
PARSE_JSON(stop_date_time) AS json_expr_time,
PARSE_JSON(display_informations) AS json_expr_info 
FROM `ensai-2023-373710.raw.arrivals`
/* LIMIT 100 */
)


