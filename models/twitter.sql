select `date`, 0 as add_to_cart, clicks as  clicks, comments as comments, engagements as engagements, 
       impressions as impressions, 0 as installs, likes as likes, url_clicks as link_clicks, 
       0 as post_click_conversions, 0 as post_view_conversions,
       0 as posts, 0 as purchase, 0 as registrations, 0 as revenue,
       retweets as shares, spend as spend, 0 as total_conversions, 
       video_total_views as video_views, 0 as ad_id, 0 as adset_id, campaign_id as campaign_id, 
       channel as channel, 0 as creative_id, 0 as placement_id -- placement_id may be defined by creating a surrogate key for each individual value of url column as well
from {{ref ('src_promoted_tweets_twitter_all_data')}}