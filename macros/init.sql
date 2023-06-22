select * from {{ref ('mcdm_paid_ads_basic_performance_structure')}}

select channel, sum(spend) / sum(clicks) CPC -- CPC
from {{ref ('src_ads_creative_facebook_all_data')}}
group by 1;

select channel, sum(spend) / sum(purchase) as `conversion cost` -- conversion cost for Facebook
from {{ref ('src_ads_creative_facebook_all_data')}}
group by 1
union all
select channel, sum(spend) / sum(purchase) as `conversion cost`
from {{ref ('src_ads_tiktok_ads_all_data')}}
group by 1
union all
select channel, sum(spend) / sum(conv) as `conversion cost`
from {{ref ('src_ads_bing_all_data')}}
group by 1;


-- cost per engage

select channel, sum(spend)/sum(total_engagements) `cost per engage`
from {{ref('mcdm_table')}}
where channel = 'Facebook' or channel = 'Twitter'
group by 1;

select channel, sum(spend)/sum(purchase_value)
from {{ref('src_ads_creative_facebook_all_data')}}
group by 1;