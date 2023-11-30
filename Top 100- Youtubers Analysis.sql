-- Overall view of top 1000 youtubers dataset

Select
COUNT(DISTINCT Country) As Total_Countries,
COUNT(DISTINCT Categories) As Total_Categories,
AVG(Suscribers) As Avg_Subsribers,
AVG(Visits) As Avg_Visits,
Avg(Likes) AS Avg_likes,
Avg(Comments) As Avg_Comments
From dbo.[Clean_Top_1000_Youtube_df - youtubers_df]

-- Top Category--

Select
Categories,
COUNT(Username) As Total_Channel
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
Group by Categories
Order by Total_Channel Desc

-- Geographical Analysis--

Select
Country,
COUNT(Username) As Total_channel
From dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
Group by Country
Order by Total_channel Desc

-- Subscriber Engagment--

Select Top 10
Username,
AVG(Suscribers) As Avg_Subscribers,
AVG(Visits) As Avg_Visits,
AVG(Likes) As Avg_Visits,
AVG(Comments) As Avg_Comments
From dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
Group by Username
Order by Avg_Subscribers desc

--Top Perfomance Identitfication--

Select Top 10
Username,
Suscribers,
Country
From dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
Order by Suscribers Desc

--Content and Channel Recommendations--

Select
Categories,
AVG(Suscribers) As Avg_Subscribers,
AVG(Visits) As Avg_Visits,
AVG(Likes) As Avg_Likes,
AVG(Comments) As Avg_Comments
From dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
Group by Categories
Order by Avg_Subscribers Desc

--Cross-Country Subscriber Engagement Comparison--

Select Top 10
Country,
AVG(Suscribers) As Avg_Subscribers,
AVG(Visits) As Avg_Visits,
AVG(Likes) As Avg_Likes,
AVG(Comments) As Avg_Comments
From dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
Group by Country
Order by Avg_Subscribers desc
