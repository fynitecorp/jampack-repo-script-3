WITH source_data AS (
    SELECT *
    FROM {{ source('sample20_fivetran_metadata', 'jampack_sample_data') }}
)

SELECT
    *,
    CASE
        WHEN {{ var('condition') }} THEN 1
        ELSE 0
    END AS test_column
FROM source_data