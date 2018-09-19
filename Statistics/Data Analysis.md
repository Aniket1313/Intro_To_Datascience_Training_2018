## Capstone Final - Data Analysis

The bank data set displays data collected for a marketing campaign aimed at getting customers to subscribe to term deposits. The data
has already been cleaned up so the next step would be to analyze the data through exploratory data analysis and see if there are any
conclusions that can be drawn.




### Step 1  Internal structure and cleanup of the data
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




### Step 2 Analyzing and Visualizing the data
Moving on, we can sort all the different columns into categorical/numerical/binary data. Starting with categorical and binary data, we can generate a few histograms to see the relationship between age distribution along with other variables. We can easily discover that very few clients have default credit, so eventually we can remove that column from our dataset. Based on the histogram, everything else seems fairly normal.

<b>default_credit</b>

| no  | yes  | 
|-----|------|
|41018| 767  |
|0.981|0.0183|

|categorical data          |numerical data         |binary data (dummy)
|--------------------------|-----------------------|-----------------------|
|prev_outcome              |annual balance         |default_credit         |
|job                       |duration               |housing_loan           |
|marital                   |contact_times          |personal_loan          |
|education                 |previous_contact_times |outcome_term_deposit(y)|
|contact_type              |age                    |


Proceeding to numerical data, we can use bubble charts or scatterplots to understand the numerical values of our dataset. After creating these charts, we can see that within charts annual_balance, duration and previous_contact_times all contain extreme values. We can verify whether these values are true or false by simply using the table chart again, but this time with value limits of balance over 80000, duration over 4000 and previous contact times over 100. After we've confirmed that those values are in the single digits, we can proceed to eliminate them from our dataset. 

### Step 3 Correlations and Chi-squares
To measure the relations between numerical and categorical variables, we proceed split our datasets into two matrixes, one including numerical value and the other containing only categorical values. To see if the numerical values have any relationship between each other we use a correlation table 

| age annual_balance  |   duration |contact_times| previous_contact_times |
|---------------------|------------|-------------|---------|
| age                 |    1.00000000 |   0.083356651 | -0.030597602|   0.050363918 |          -0.027508176 |
| annual_balance      |    0.08335665 |   1.000000000 |  0.015113375|  -0.006504731 |           0.009739325 |
| duration            |   -0.03059760 |   0.015113375 |  1.000000000|  -0.048924942 |          -0.008585207 |
| contact_times       |    0.05036392 |  -0.006504731 | -0.048924942|   1.000000000 |          -0.010718597 |
| previous_contact_times| -0.02750818 |   0.009739325 | -0.008585207|  -0.010718597 |           1.000000000 |

We can see none of the values exceeds 0.1, which means that there isn't a strong correlation between these values.
On the other hand, with categorical data, we can implement the Chi-square matrix and display all P-values between entries, if the
p-values we obtain objects the null, it could mean that there are strong differences between the categories and their objects.

| Chi-square Matrix    | job | marital | education | housing_loan | personal_loan | contact_type | prev_outcome | outcome_term_deposit |
|----------------------|-----|---------|-----------|--------------|---------------|--------------|--------------|----------------------|
| job                  | NA  | 0.00    | 0.00      | 0.00         | 0.00          | 0.00         | 0.00         | 0.00                 |
| marital              | NA  | NA      | 0.00      | 0.00         | 0.00          | 0.00         | 0.00         | 0.00                 |
| education            | NA  | NA      | NA        | 0.00         | 0.00          | 0.00         | 0.00         | 0.00                 |
| housing_loan         | NA  | NA      | NA        | NA           | 0.00          | 0.00         | 0.00         | 0.00                 |
| personal_loan        | NA  | NA      | NA        | NA           | NA            | 0.14         | 0.00         | 0.00                 |
| contact_type         | NA  | NA      | NA        | NA           | NA            | NA           | 0.00         | 0.00                 |
| prev_outcome         | NA  | NA      | NA        | NA           | NA            | NA           | NA           | 0.00                 |
| outcome_term_deposit | NA  | NA      | NA        | NA           | NA            | NA           | NA           | NA                   |

Assuming that our Alpha Level is 0.05, we can see that only Contact_type and Personal_Loan seems to be unrelated, all other categorical data combinations have a p-value that rejects the null. Meaning most categorical data do have some affect on the outcome_term_desposit.
