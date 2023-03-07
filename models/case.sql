with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('Case') }}

),

renamed as (

    select
        column1 as test_column,
        column2 as Id

    from source

)

select * from renamed
