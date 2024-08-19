## 1. Project Overview
- **Objective:** Conduct RFM analysis on a marketing campaign to segment customers.
- **Context:** The dataset contains customer transaction data from a marketing campaign, including the date of the last purchase, purchase frequency, and total spend. It is used for RFM analysis to segment customers based on their purchasing behavior, helping to optimize marketing strategies.
- **Dataset:** This dataset is from Kaggle.

## 2. Data Description
- **Dataset Overview:** Dataset has 2240 observations and 29 columns, including bought products, demographic information and transaction information.

## 3. Methodology
- **Analysis Approach:** RFM analysis is a marketing technique used to evaluate and segment customers based on three key metrics: Recency (how recently a customer made a purchase), Frequency (how often they purchase), and Monetary value (how much they spend). This method helps businesses identify valuable customer segments and tailor marketing efforts to increase retention and profitability.
- **Techniques Used:** Calculate Recency, Frequency, and Monetary values for each customer, then group them into RFM segments as described below:
  - **About to Sleep:** Customers in this segment have relatively low recency, frequency, and monetary value. They have been inactive recently and might be slipping away.
  - **At Risk:** These customers have a high monetary value but low recency and frequency, indicating they are at risk of churning.
  - **Cannot Lose Them:** High in all RFM values, these customers are valuable and should be retained.
  - **Champions:** These customers are highly active, with recent purchases and high monetary value. They are the most valuable segment.
  - **Hibernating:** Customers with low recency, frequency, and monetary value. They might have been active in the past but are currently inactive.
  - **Loyal Customers:** High in frequency and monetary value with moderate recency. They are loyal but not recent customers.
  - **Need Attention:** These customers have moderate monetary value but low recency and frequency. They might need attention to prevent churn.
  - **New Customers:** Recently acquired customers with low RFM values. They need nurturing to become loyal customers.
  - **Potential Loyalists:** These customers have moderate RFM values, indicating potential for becoming loyal.
  - **Promising:** Customers with low RFM values, indicating they are new or need attention to increase their value.


## 4. Results and Findings
- **Key Results:**
  - The majority of customers fall into the 'At Risk' and 'Hibernating' segments.
  - A significant number of customers are classified as 'Champions.'
  - There is a notable presence of loyal customers in the 'Loyal' and 'Potential Loyalist' segments.
- **Visualizations:** 
![image](https://github.com/user-attachments/assets/7abc530d-1146-4fc2-ac11-07bb24d9cde6)

## 5. Conclusion
- **Summary of Insights:** Most customers are either 'At Risk' or 'Hibernating,' with a strong presence of 'Champions' and a notable group of loyal customers in the 'Loyal' and 'Potential Loyalist' segments.
- **Recommendations:**
  - **Champions:** Reward these users. They promote your products and can be early adopters for your new launches.
  - **Loyal Customers:** These users are responsive to your promotions. Suggest higher-value products and ask them for reviews.
  - **Potential Loyalists:** Engage these customers with long-term offers like loyalty programs or membership rewards. Suggest other categories of products to them.
  - **Recent Users:** For new users, ensure a smooth onboarding experience and provide assistance when needed.
  - **Promising:** Convert these customers into loyal ones by creating brand awareness and offering free trials.
  - **Needs Attention:** Bring back these customers by providing limited-time offers and recommending products based on their purchase history.
  - **About To Sleep:** These users may be lost if not reactivated. Recommend popular products and offer discounts on memberships.
  - **Price Sensitive:** These users are looking for the best deals. Recommend highly-rated products and send them discount communications.
  - **Can’t Lose Them:** Listen to their feedback, suggest new products, and work to keep them engaged on your platform.
  - **Hibernating:** Recommend products from other categories and provide personalized offers to re-engage these users.
  - **Lost:** Reconnect with these users through different marketing campaigns to make your presence known.
- **Limitations:** Due to the lack of context regarding the specific marketing strategies or business environment, the effectiveness of the RFM analysis can be limited. Without insights into the company’s unique customer behavior, market conditions, or campaign specifics, the RFM segments identified may not accurately reflect the company's actual customer value or engagement patterns.
