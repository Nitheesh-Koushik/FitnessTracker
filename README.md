# FitnessTracker

I've resolved to put some weight down this year, so I started tracking my calorie intake using an app called FatSecret. The app in itself was very good but I did not like the data visualization part of the app: most graphs were on a weekly basis, which made it really hard to visualize the big picture. 

Once I realized that there was an API for this app, I started working towards an end goal where I could see the consolidated information over months. Once the data is extracted from the API, it's loaded in S3 buckets on AWS after which Lambda functions perform some ETL and move it to AWS RDS MySQL DB. 

I've also built a Tableau dashboard connected to the relational database, that consolites all the information, which you can check out [here](https://public.tableau.com/app/profile/nitheesh.koushik.gattu/viz/WeightLossDashboard_17123494156690/Dashboard1). 
