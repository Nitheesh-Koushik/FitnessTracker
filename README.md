# FitnessTracker

I've resolved to lose some weight this year, so I started tracking my calorie intake using an app called FatSecret. The app in itself was very good but I did not like the data visualization part of the app: most graphs were on a weekly basis, which made it really hard to visualize the big picture. 

Once I realized that there was an API for this app, I started working towards an end goal where I could see the consolidated information over months. After extracting the data from the API, it's loaded into S3 buckets on AWS. Then, Lambda functions perform some ETL (Extract, Transform, Load) processes before moving it to the AWS RDS MySQL DB.

I've also built a Tableau dashboard connected to the relational database, which consolidates all the information. You can check it out [here](https://public.tableau.com/app/profile/nitheesh.koushik.gattu/viz/WeightLossDashboard_17123494156690/Dashboard1). 
