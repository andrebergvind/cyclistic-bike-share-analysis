# 🚲 Cyclistic Bike Share Analysis

## 📋 Project Overview
A consumer behviour data analysis project exploring behavioral differences between casual riders and members for Cyclistic, a fictional bike share company operating in Chicago. The project was completed as part of the Google Data Analytics Certificate and served as the capstone of the course.


### 🎯 Business Task  
The director of marketing at Cyclistic believes the company’s future growth depends on maximising the number of annual memberships. Therefore, i have been given the task to analyse how casual riders and annual members use Cyclistic bikes differently, uncover actionable insights, and provide recommendations to convert casual riders into annual members.

### 👥 User Conditions
In Cyclistics’s bike share system, annual members require to pay an up front fee of 143 dollars per year and can enjoy unlimited 45 minute rides with no unlocking fees. Additional cost per minute is only added when exceeding the 45 minute limit.

In contrast, casual riders pay per ride, with unlocking fees of 1 dollar and additonal per-minute usage rates of 0.22 dollars.

### 🗄️ Data Source

The analysis used a 12 month Divvy bike share dataset ranging from July 2024 to June 2025.

Due to file size restrictions, the full dataset is not included but can be accessed via the original Divvy data sources found here: [Divvy Data](https://divvy-tripdata.s3.amazonaws.com/index.html)

### 🛠️ Tools Used

- **Excel**
- **SQL (BigQuery)**
- **Tableau**

## 🧹 Data Cleaning & Transformation

Using SQL, an initital pre-cleaning phase was performed to conduct a more profound understanding of the data, potential errors, and its overall capabilities to provide meaningful insights. Overall, this step served as the foundation for data validation and the identification of cleaning requirements.
The full process and justifications can be found here: [Pre-Cleaning SQL Queries](./cyclistic-bike-share-analysis/SQL/pre_cleaning_SQL.sql)

To conclude the cleaning and transformation process, over 130.000 rows containing errors removed in order to provide a fair analysis.
Additionally, new columns were created to facilitate the understanding of behavioural usage patterns.
The full process and justifications can be found here: [Cleaning Queries](./cyclistic-bike-share-analysis/SQL/cleaning_phase_SQL.sql)


## 📊 Dashboards

### User Behaviour Overview
![Dashboard](./cyclistic-bike-share-analysis/images/User_Behaviour_Overview.png)


### Location Insights
![Dashboard](./cyclistic-bike-share-analysis/images/Location_Insights.png)

[View Tableau Dashboard](https://public.tableau.com/views/CyclisticAnalysis_17737226068460/UserBehaviourOverview?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link)


## 💡 Key Insights

1. **Casual riders are highly influenced by seasonality and leisure oriented usage**

Casual riders shows significantly higher increase in activity during summer months and weekends compared to annual members. This outcome suggests that many casual users primarily rely on the service for recreational and occasional travel rather than daily commuting.

2. **Casual riders tend to take longer and more flexible trips**

Compared to annual members, casual riders recorded substantially longer ride durations and a more gradual increase in activity throughout the day. This indicates a preference for flexible and experience oriented usage rather than short, routine transportation.

3. **Casual riders are strongly connected to recreational and tourist-heavy areas**

Station usage patterns revealed that casual riders are more commonly associated with parks, waterfronts, and tourist-heavy locations, unlike annual members who primarily travel between business and transportation-centered areas.


## ✅ Recommendations
  

1. **Promote the long-term value of annual memberships during peak casual rider seasons**

Launch targeted March to September, and weekend campaigns, the periods casual riders showcase highest increase in in use of the service.
Emphasize how frequent casual riders could reduce overall ride costs and gain additional benefits by switching to annual memberships. For example how a one tim payment provides accessibility to bikes without having to worry about unlocking fees.

2. **Offer limited-time incentives encouraging casual riders to transition into annual members**

Provide incentives such as discounted first-year memberships and free trial periods for casual riders with high ride frequency or long-duration trips to lower the barrier toward membership conversion. The casual riders may need more incentives than just overall lower costs. By providing a trial or a discount, particularly during peaking period, they might be more susceptible and therefore commit.

3. **Target casual riders directly at high-traffic recreational stations**

In order to most effectively reach the targeted segment, we should implement location-based marketing at parks, waterfronts, and tourist-heavy stations. These are areas most commonly recorded for ride initiation, and may serve as the most efficient way to reach our target audience.
Digital billboards and geo-fenced mobile app notifications could serve as efficient means to reach the targets. By leveraging the app, every time they open it to connect, a pop up could appear with an offer they can't refuse.

 ---

 🚀 **Additional Recommendation Focusing On Tourists**

As a supplement to only aim for an increased membership conversion, Cyclistic has a strong possibility of increasing revenue by targeting tourists. In order to do so, they can:

4. **Offer a Variety of Membership Types**

Introduce flexible membership options to appeal to the tourist rider segment, such as weekend-only passes and a 1-week tourist membership.
Although it does not fully agree with the main purpose of this analysis, it certainly could drive additional revenue and increase customer loyalty with the company and in that way support a stable long term growth.
