## Capstone Final - Data Analysis

The bank data set displays data collected for a marketing campaign aimed at getting customers to subscribe to term deposits. The data
has already been cleaned up so the next step would be to analyze the data through exploratory data analysis and see if there are any
conclusions that can be drawn.




#### Step 1  Internal structure and cleanup of the data
The first step to analyzing the data would be to look at the internal structure of the data object. By loading the clean data into R and 
using the str and summary function. We can see that the clients range from age 20 to 80 with an annual balance between -8019 and 102127,
other numerical data covers contact frequency, last contact date and contact duration.

The most immediate outliers we have in the dataset shows up in age. So by looking at the distribution of age, we can decide whether or not we'd like to remove ages that are niche to our analysis. After creating a datatable that caculates the frequencies of the ages, we can delete any age that covers less than 1% of the data. Which narrows down our age distribution to between ages 25 and 60.

| age | freq | percent |
|-----|------|---------|
| 20  | 50   | 0.11    |
| 25  | 510  | 1.16    |
| 33  | 1922 | 4.40    |

Another part of the data that might contain outliers are the negative annual balance holders, logically speaking, users with negative annual balance holders are unlikely to open up a term deposit account. However, just to be sure, we can use frequency tables to determine whether or not this is true. By filtering out the negative balance holders we can see that they make up 8.5% of clients after we've removed our age outliers that users that opened a term deposit make up less than 0.5% of clients. Thus we can consider removing these users from our data set since it would be unlikely that they would affect the outcome of our analysis too much.

| no  | yes  | 
|-----|------|
|3366 | 201  |
|0.08 |0.0048|

Finally, <b>last_contact_month</b>, <b>last_contact_day</b> and <b>past_days</b> should be removed to avoid confusion regarding numerical values for the analysis.




#### Step 2 Analyzing and Visualizing the data
Moving on, 


|categorical data          |numerical data         |binary data (dummy)
|--------------------------|-----------------------|-----------------------|
|age                       |annual balance         |default_credit         |
|job                       |duration               |housing_loan           |
|marital                   |contact_times          |personal_loan          |
|education                 |previous_contact_times |
|contact_type              |                       |
|prev_outcome              |                       |

outcome_term_deposit(y)   














#### Step 3 Answering Capstone Project Questions 
1. Can you count something interesting?
2. Can you find some trends (high, low, increase, decrease, anomalies)?
3. Can you make a bar plot or a histogram?
4. Can you compare two related quantities?
5. Can you make a scatterplot?
6. Can you make a time-series plot?
7. Having made these plots, what are some insights you get from them? Do you see any correlations? Is there a hypothesis you would like to investigate further? What other questions do they lead you to ask?
