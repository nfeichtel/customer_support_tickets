# Analysis of Customer Support Tickets

## Background

The company sells a variety of technology products, both software and hardware. Customer service at the company deals with a variety of support tickets each day. The issues dealt with daily vary, and include payment, cancelation requests, and account access. Support tickets are responded to via the following channels: chat, phone, email, social media, and are given a priority level of low, medium, high, and critical. A total of 45 customer service specialists are working during each shift. The metrics used to measure customer service success are Customer Satisfaction (CSAT) and time to resolution.

Insights and recommendations are provided on the following key areas:
- Customer Satisfaction: how are our customers rating their experience on a scale of 1-5
- Time to Resolution: how long are customers waiting for their issue to be resolved
- Ticket Volume: what is the daily ticket volume and status

The SQL queries used to inspect and clean the data for this analysis can be found [here](/setup_queries/).

Analysis SQL queries regarding various business questions can be found [here](/analysis_queries/).

An interactive Tableau dashboard used to report and explore customer service trends can be found here [link].

## Data Structure

The data consists of 17 columns and 8,469 rows, with each row representing a single customer support ticket. The relevant columns for our analysis are ticket type, ticket status, ticket channel, ticket priority, ticket subject, first response time, time to resolution, and customer satisfaction rating. This data is a snapshot of all customer support tickets created over a 27-hour period.


## Executive Summary

Customers are overall dissatisfied with their customer service experience. An overall CSAT score of 39 out of 100 was recorded.  A contributing factor to their dissatisfaction could include a long average time to resolution of 11 hours and 42 minutes. Overall, the customer service department is handling an average of ticket volume of 314 tickets per hour. This high ticket volume could be leading to our reps being unable to provide the high customer service that meets our standards.


## Insights Deep Dive

Customer Satisfaction: 
- Based on a CSAT score of 39, overall customers are dissatisfied with our level of customer service. The average customer satisfaction rating given was 3 out of 5. This suggests that while the overall CSAT score might be low, the customer service experienced can be categorized as “ok” as opposed to “poor”.
- The ticket channel with the highest CSAT score was “Chat” with a score of 42, and the channel with the lowest score was “Social Media” with a score of 37. The ticket subject with the highest customer satisfaction involved refund requests (CSAT 43) while the lowest was delivery issues (CSAT 33).

Time to Resolution:
- For closed tickets, the quickest time to resolution was instant and the longest time to resolution was 23 hours and 59 minutes. The average time to resolution is 11 hours and 42 minutes. 
- Short ticket resolution times comprised 35.5% of tickets, with medium resolution times comprising 31.7%, and long resolution times approximating 32.8% of closed tickets. While short ticket time to resolution comprised the highest percentage of closed tickets, increasing this number substantially could have a positive impact on customer satisfaction.

Ticket Volume: 
- Total ticket volume 8,469 with 32.7% of these tickets being closed during the analyzed period. The remaining 67.3% of tickets are either open or pending customer response.
- The average ticket volume per hour is 313.9. With 45 customer service specialists working each shift, this equates to approximately 7 tickets per specialist per hour.
- Volume over our 4 ticket channels and 5 ticket types are all evenly distributed.


## Recommendations

Based on the insights and findings above, we would recommend the customer service department consider the following:

- A number of simple ticket inquiries can be resolved before reaching a customer service agent. We recommend creating a FAQ to deal with common reoccurring problems. A link to the FAQ can be the initial automated response to emails and chat. Our estimates indicate that 40% of ticket volume can be handled by this automated feature. 
- The “Chat” ticket channel comprises 25% of ticket volume, with each inquiry being answered by an actual staff member. Using a chatbot instead of a rep to handle chat-channel refund requests, cancellation requests, and 
billing inquiries would decrease chat-ticket volume by about 60%.
- The first 2 recommendations would decrease ticket volume by 2184 tickets daily, a overall decrease in volume of 25.8%. This decrease would result in ticket volume per hour dropping from 313.9 to 232.8 tickets. 
- Our final recommendation is to add 2 additional customer service specialists to each shift. This measure, along with the 2 mentioned above will decrease the ticket volume per hour per specialist from 7 to less than 5 tickets.

CSAT and other metrics should continue to be tracked as recommendations are implemented in order measure the success of these initiatives and identify where adjustments should be made.

