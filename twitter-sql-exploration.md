#**BTS - Big Data**
## Pablo Pussell Walter
![Pablo Pussell Walter](https://lh3.googleusercontent.com/BZq7nZOvHRRaNgbNguJilrrOAD4T0w1ozMtOAYVmA9S7oox3T_hszAUCCkcstOnMoHY=s300 "904699_10151688402831360_1022374331_o.jpg")

 - LinkedIn: [Pablo Pussell](https://www.linkedin.com/in/pablopussell)

#In Short
 - Enthusiastic and high-achieving undergraduate student who is self-motivated, confident and hard-working.
 - Contributes to group projects with direct input and a positive attitude.
 - Lived in different cultures with a broad view of people.
 - Active and hands-on person ready to take initiative and assume responsibility.

#Data Analysis Exercise
1. How many tweets?
   rawdf.shape
   2129755
2. How many unique users?
   rawdf.user_id.nunique()
   918911
3. How many tweets contains more than one URL?
   sum(rawdf.text.str.count('http')>1)
   19899
4. How many tweets are geotagged (have latitude and longitude )?
   2129755 - sum(rawdf.geo.str.count('None'))
   15572
5. How many tweets are original (e.g., not retweets)?
   rawdf.groupby(['retweeted']).apply(len)
   retweeted
   False    2129597
   True           5
6. How many tweets for each day? In average?
   daydf = pd.DataFrame(rawdf.created_at.str.split('T',1).tolist(),columns = ['day','time'])
  daydf.groupby(['day']).apply(len)
  daydf.groupby(['day']).apply(len).mean(0)
   2013-01-28    69123
   2013-01-29    98501
   2013-01-30    75435
   2013-01-31    71642
   2013-02-01    75419
   2013-02-02    72197
   2013-02-03    46374
   2013-02-04    34824
   2013-02-05    62784
   2013-02-06    79157
   2013-02-07    72738
   2013-02-08    80017
   2013-02-09    87639
   2013-02-10    79522
   2013-02-11    64506
   2013-02-12    69265
   2013-02-13    75196
   2013-02-14    69675
   2013-02-15    72621
   2013-02-16    78666
   2013-02-17    74956
   2013-02-18    71359
   2013-02-19    70309
   2013-02-20    72000
   2013-02-21    77571
   2013-02-22    80345
   2013-02-23    89468
   2013-02-24    88286
   2013-02-25    70160
   
   Average = 73439.8275862069
7. Day of the week with highest volume of traffic?
   
   
8. Which are the most popular user_location ?
   
   
9. Which are the most popular hashtags?
   
   
