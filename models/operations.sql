with source as (

    select * from {{ ref('test') }}

),

renamed as (

    select
        column1 as test_column,
        column2 as Id

    from source

)

select * from renamed
