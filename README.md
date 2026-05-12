# Cyclistic Bike Share Analysis
Data analysis project exploring behavioral differences between casual riders and members using Excel, SQL (BigQuery) and Tableau, with insights to support customer conversion strategies.
In this project, I assume the role of a Junior Data Analyst on the marketing analytics team at Cyclistic, a bike-share company based in Chicago.

## Project Overview

**Business Task:**  
The director of marketing at Cyclistic believes the company’s future growth depends on maximizing the number of annual memberships. The goal of this project is to analyze how casual riders and annual members use Cyclistic bikes differently, uncover actionable insights, and provide data-driven recommendations to convert casual riders into annual members.

**Main Question:**  
> How do casual vs member users behave differently, and how can Cyclistic convert casual users into members?

---

## Data Sources

The analysis uses the Cyclistic bike share dataset, which includes 12 months of ride data ranging from July 2024 to June 2025. Key fields include:

- `ride_id`: Unique identifier for each ride  
- `rideable_type`: Type of bike (classic_bike, electric_bike, electric_scooter)  
- `started_at` / `ended_at`: Ride timestamps  
- `start_station_name` / `end_station_name`: Station information  
- `start_lat` / `start_lng` / `end_lat` / `end_lng`: Coordinates of start and end points  
- `member_casual`: User type (casual or member)

> **Note:** Due to file size restrictions, the full dataset is not included. It can be accessed via the original Cyclistic Divvy data sources.

---

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

> The cleaned dataset was stored as `cleaned_tripdata` and used for all subsequent analysis.

---

## Analysis Summary

The analysis focused on understanding differences between casual riders and annual members across multiple dimensions:

1. **Ride Frequency & Patterns**
   - Members ride more consistently across all months.  
   - Casual riders show spikes during weekends and summer months.

2. **Ride Duration**
   - Casual rides are generally longer, suggesting occasional leisure usage.  
   - Members have shorter, frequent trips, indicating commuting patterns.

3. **Station & Geographic Patterns**
   - Members tend to start and end rides at main stations near downtown around workplaces.  
   - Casual riders prefer recreational areas or tourist-heavy locations.

4. **Time-of-Day Trends**
   - Member rides peak during morning at 8 AM and evening commute hours around 5PM.  
   - Casual rides rise steady until 5pm.

---

## Visualizations

The Tableau dashboard provides professional, interactive visualizations including:

- **Average Trip Duration by User Type** (Bar chart)  
- **Rides by Month** (Grouped by member vs casual)  
- **Rides by Day** (Grouped by member vs casual)  
- **Ride Start Time Distribution** (Hourly)   
- **Top 10 Popular Start Stations** (Members vs Casuals)  
- **Geo Maps of Popular Start Locations**  

> **Link to interactive dashboard:** [Tableau Public Dashboard](https://public.tableau.com/views/CyclisticAnalysis_17737226068460/UserBehaviourOverview?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link)

---

## Key Insights

1. Analysis shows casual riders tend to take longer trips compared to members and are more active on Saturdays and Sundays
2. Ride origin data indicates casual users predominantly begin their trips in parks, tourist spots, and other recreational locations
3. Members exhibit strong ride activity spikes during morning and evening commute times, whereas casual riders gradually increase activity until late afternoon

---

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

