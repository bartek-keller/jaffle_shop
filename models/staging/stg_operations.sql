with source as (

    select * from {{ ref('raw_operations') }}

),

renamed as (

    select
        column1,
        column2

    from source

)

select * from renamed