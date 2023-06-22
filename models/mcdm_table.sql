with bing as (
    select * from {{ref('bing')}}
),
twitter as (
    select * from {{ref('twitter')}}
),
facebook as (
    select * from {{ref('facebook')}}
),
tiktok as (
    select * from {{ref('tiktok')}}
)

select * from bing
union all
select * from twitter
union all
select * from facebook
union all 
select * from tiktok