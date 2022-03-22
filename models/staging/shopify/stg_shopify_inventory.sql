with shopify_inventory as(
    select
        *
    from {{ source('shopify', 'inventory_items') }}
)

select * from shopify_inventory