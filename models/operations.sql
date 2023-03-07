with operations as (

    select * from {{ ref('stg_operations') }}

),

renamed as (

    select
        column1 as test_column,
        column2 as id

    from operations

)

select * from renamed
