select `date`, add_to_cart, clicks, comments as comments, 0 as engagements, impressions as impressions, 
       mobile_app_install as installs, likes as likes, inline_link_clicks as link_clicks, 
       0 as post_click_conversions, 0 as post_view_conversions,
       0 as posts, purchase as purchase, complete_registration as registrations, purchase_value as revenue,
       shares as shares, spend as spend, purchase as total_conversions, 
       views as video_views, ad_id as ad_id, adset_id as adset_id, campaign_id as campaign_id, 
       channel as channel, creative_id as creative_id, 0 as placement_id
from {{ref ('src_ads_creative_facebook_all_data')}}