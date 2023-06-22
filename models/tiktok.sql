select `date`, add_to_cart, clicks, 0 as comments, 0 as engagements, impressions, 
       (rt_installs + skan_app_install) installs, 0 as likes, 0 as link_clicks, 
       conversions as post_click_conversions, skan_conversion as post_view_conversions,
       0 as posts, purchase as purchase, registrations as registrations, 0 as revenue,
       0 as shares, spend as spend, (conversions + skan_conversion) as total_conversions, 
       video_views as video_views, ad_id as ad_id, adgroup_id as adset_id, campaign_id as campaign_id, 
       channel as channel, 0 as creative_id, 0 as placement_id
from {{ref ('src_ads_tiktok_ads_all_data')}}

