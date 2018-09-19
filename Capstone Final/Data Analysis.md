## Capstone Final - Data Analysis

The bank data set displays data collected for a marketing campaign aimed at getting customers to subscribe to term deposits. The data
has already been cleaned up so the next step would be to analyze the data through exploratory data analysis and see if there are any
conclusions that can be drawn.

#### Step 1  Internal structure of the data
The first step to analyzing the data would be to look at the internal structure of the data object. By loading the clean data into R and 
using the str and summary function. We can see that the clients range from age 20 to 80 with an annual balance between -8019 and 102127,
other numerical data covers contact frequency, last contact date and contact duration.

The most immediate outliers we have in the dataset shows up in age. So by looking at the distribution of age, we can decide whether or not we'd like to remove ages that are niche to our analysis. After creating a datatable that caculates the frequencies of the ages, we can delete any age that covers less than 1% of the data. Which narrows down our age distribution to between ages 25 and 60.

| age | freq | percent |
|-----|------|---------|
| 20  | 50   | 0.11    |
| 25  | 510  | 1.16    |
| 33  | 1922 | 4.40    |

Another
