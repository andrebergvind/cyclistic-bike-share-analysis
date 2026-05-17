# Cyclistic Bike Share Analysis
A marketing and consumer behaviour data analysis project, exploring behavioral differences between casual riders and members using Excel, SQL (BigQuery) and Tableau, with insights to support customer conversion strategies.
In this project, I assume the role of a Junior Data Analyst on the marketing analytics team at Cyclistic, a bike-share company based in Chicago.

The project was completed as part of the Google Data Analytics Certificate and served as the final capstone project required for certification.

## Project Overview

**Business Task:**  
The director of marketing at Cyclistic believes the company’s future growth depends on maximizing the number of annual memberships. The objective of the project was to analyze how casual riders and annual members use Cyclistic bikes differently, uncover actionable insights, and provide data-driven recommendations to convert casual riders into annual members.

**Main Question:**  
How do casual vs member users behave differently, and how can Cyclistic convert casual users into members?


## Data Sources

The analysis used the Cyclistic bike share dataset, which includes 12 months of ride data ranging from July 2024 to June 2025. Key fields include:

- `ride_id`: Unique identifier for each ride  
- `rideable_type`: Type of bike (classic_bike, electric_bike, electric_scooter)  
- `started_at` / `ended_at`: Ride timestamps  
- `start_station_name` / `end_station_name`: Station information  
- `start_lat` / `start_lng` / `end_lat` / `end_lng`: Coordinates of start and end points  
- `member_casual`: User type (casual or member)

> **Note:** Due to file size restrictions, the full dataset is not included. It can be accessed via the original Cyclistic Divvy data sources.



## Data Cleaning & Transformation

1. **Filtering invalid rides**  
   - Removed rides with `ended_at < started_at`.  
   - Excluded rides shorter than 1 minute or longer than 24 hours (131,461 rows removed).

2. **Handling missing station data**  
   - Some electric bikes and scooters lack station names.  
   - These records were retained to avoid skewing the analysis; NULL station values were filtered at the visualization stage when necessary.

3. **Feature engineering**  
   - Created new time-based columns:
     - `ride_month` → Month of the ride  
     - `ride_weekday` → Day of the week  
     - `start_time` / `end_time` → Time of day for ride start/end  
   - Calculated `duration_min` for consistent ride duration analysis.

4. **Data validation steps**  
   - Checked for null values across all columns  
   - Verified `rideable_type` and `member_casual` categories  
   - Ensured `ride_id` uniqueness and length consistency  
   - Validated geographic coordinates for all rides

The cleaned dataset was stored as `cleaned_tripdata` and used for all subsequent analysis.


## Dashboard

The Tableau dashboard provides professional, interactive visualizations including:

- **Average Trip Duration by User Type** (Bar chart)  
- **Rides by Month** (Grouped by member vs casual)  
- **Rides by Day** (Grouped by member vs casual)  
- **Ride Start Time Distribution** (Hourly)   
- **Top 10 Popular Start Stations** (Members vs Casuals)  
- **Geo Maps of Popular Start Locations**

### User Behaviour Overview
![Dashboard](cyclistic-bike-share-analysis/images/Consumer_Behaviour_Overview.png)


### Location Insights
![Dashboard](images/Location_Insights.png)


> **Link to interactive dashboard:** [Tableau Public Dashboard](https://public.tableau.com/views/CyclisticAnalysis_17737226068460/UserBehaviourOverview?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link)


## Analysis

The analysis showcased several differences between casual riders and annual members in terms of ride behavior, usage frequency, trip duration, and geographic movement patterns. By examining trends across time, location, and ride activity, the analysis provides deeper insight into how the two customer groups appear to use Cyclistic’s bike-sharing services for different purposes.

**Ride Frequency**

In terms of rides by month, both casual riders and annual members followed a similar overall seasonal pattern, with ride frequency gradually increasing from January onward, peaking in September, and then declining during the later months of the year.

However, despite the similar overall trends, casual riders showcased a noticeably sharper increase in activity during the summer period. From May to June, casual rides increased by approximately 50%, indicating that casual users are more influenced by seasonal factors such as warmer weather, holidays, and outdoor leisure activities compared to annual members.

When analyzing weekly ride activity, annual members demonstrated more consistent usage throughout weekdays, indicating that bike-sharing is integrated into their daily commuting and weekday routines. In contrast, casual riders showed significantly higher activity levels during weekends, suggesting a stronger connection to leisure and recreational usage.

Overall, the findings highlight clear seasonal and recreational usage patterns among casual riders. The strong increase in rides between spring and summer months, combined with higher weekend activity, suggests that many casual riders may be tourists or occasional users utilizing the service primarily for leisure purposes.

**Ride Duration**

A major difference in usage patterns between the two groups is reflected in the average trip duration, where casual riders recorded almost double the average ride length compared to annual members.

This pattern further supports earlier observations, suggesting that casual riders are more likely to use the service for leisure-related activities rather than routine transportation. The longer ride durations may indicate usage for sightseeing, recreational trips, or more occasional exploratory travel around the city.

Annual members, on the other hand, evidentially take shorter rides, which aligns more closely with commuting behavior and regular transportation needs. This suggests that although members use the service more frequently, their rides are generally shorter and focused on efficient point-to-point transportation rather than leisure-oriented travel.

**Starting Time Trends**

Distinct differences also appeared when analyzing ride activity throughout the day. Annual members demonstrated clear peaks during traditional commuting hours, particularly around 8 AM and 5 PM, which further supports earlier observations that they use the service as part of transportation to and from workplaces and daily mobility needs. 

In contrast, casual rider activity followed a more gradual increase throughout the day, with ride frequency steadily rising from the late morning before reaching its highest point in the late afternoon around 5 PM. Unlike annual members, casual riders did not display a strong morning commute peak, suggesting that their usage is less associated with structured weekday routines and more connected to flexible activities.

The differing activity distributions throughout the day further highlight how the two customer groups appear to use the service for different purposes.

**Station & Geographic Patterns**

A geographic analysis revealed additional clear differences between the groups in terms of station usage. By mapping out popular ride locations, the findings suggests that annual members tend to start their trips near downtown business districts, transportation hubs, and workplace-centered areas. In contrast, casual riders were more commonly associated with stations located near parks, waterfronts, recreational zones, and tourist-heavy areas. 

The geographic distribution of rides further reinforces the behavioral differences observed throughout the analysis. While annual members display movement patterns centered around efficiency and urban mobility, casual riders demonstrate usage patterns more strongly connected to seasonal, recreational, and tourism-related activities.


Eventhough a small detection was made about the increasing rides over months favouring summer months for casual riders, the pattern could simply suggest a bigger number of tourists during these months rather than...
What was more interesting to see was 

**Conclusion**

Overall, the analysis indicates that annual members and casual riders demonstrate significantly different usage behaviours. Annual members appear to use the service more consistently as part of regular urban transportation and commuting needs, while casual riders show stronger connections to seasonal, recreational, and leisure-oriented usage. 

Differences in ride frequency, trip duration, time-of-day activity, and station usage suggest that converting casual riders into annual members may require targeted membership strategies tailored to their more recreational and seasonal usage behavior.


## Key Insights

1. **Casual riders are highly influenced by seasonality and leisure-oriented usage**

Casual riders showed significantly higher activity during summer months and weekends compared to annual members, suggesting that many users primarily rely on the service for recreational and occasional travel rather than daily commuting.

2. **Casual riders tend to take longer and more flexible trips**

Compared to annual members, casual riders recorded substantially longer ride durations and a more gradual increase in activity throughout the day. This indicates a preference for flexible and experience-oriented usage rather than short, routine transportation.

3. **Casual riders are strongly connected to recreational and tourist-heavy areas**

Station usage patterns revealed that casual riders are more commonly associated with parks, waterfronts, and tourist-heavy locations, unlike annual members who primarily travel between business and transportation-centered areas.


## Recommendations

Based on the analysis, Cyclistic can increase annual memberships by:

1. **Offer a Variety of Membership Types**
   - Target tourists and other leisure riders promoting weekend or week memberships 
   - Introduce flexible membership options to appeal to different rider segments, such as weekend-only passes, 1-week tourist memberships, or short-term trial memberships

2. **Target Marketing by Ride Behavior**
   - Identify casual users with frequent weekend usage or long-duration rides
   - Tailor messaging to highlight benefits that resonate with these behaviors, for example, “Unlimited weekend rides with a membership”

3. **Localized Engagement**
   - Focus on recreational and tourist-heavy areas for membership campaigns
   - Place advertisements or QR code offers at popular casual start stations to capture new members 

