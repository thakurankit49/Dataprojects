This project aims to leverage data analytics to understand why employees leave the organization. By analyzing the Employees Data.csv dataset, I identify high-risk departments, visualize attrition-prone employee profiles, and uncover the primary drivers behind turnover to help HR teams implement better retention strategies.

The analysis is performed on a dataset containing 1,470 records and 35 features. Key features include:

1. Demographics: Age, Gender, Marital Status.

2. Professional Background: Department, Job Role, Years at Company, Total Working Years.
 
3. Employee Sentiment: Job Satisfaction, Environment Satisfaction, Work-Life Balance.

4. Target Variable: Attrition (Yes/No).

Findings:

1. Employee attrition in this dataset is relatively low overall (~16%), with a clear imbalance between employees who stayed and those who left. However, deeper analysis shows that attrition is not evenly distributed and is concentrated within specific employee segments. 

2. Employee attrition in this dataset is mainly driven by career stage, compensation, role type, and commute distance, rather than performance or satisfaction alone.

3. Younger employees (18 to 24) and those in their first few years in a role are more likely to leave, indicating that early-stage employees are the most vulnerable group. Attrition decreases as employees gain more experience, though insights for very experienced employees are less certain due to smaller sample sizes.

4. Sales Representatives have the highest attrition, but since their job satisfaction is similar to other roles, the issue is likely not satisfaction alone, but a mix of factors like compensation, growth, or work conditions. This also shows that high attrition roles need deeper segmentation rather than surface-level conclusions.

5. Salary plays a key role, with the lowest income group showing the highest attrition and higher-income employees being more stable. However, differences within mid-income groups are not very strong, meaning salary is important but not the only driver.

6. Interestingly, performance ratings do not impact attrition, meaning even high-performing employees leave at similar rates, so performance cannot be used to predict risk.

7. Other factors like long commute distance also increase attrition, suggesting that external job conditions matter significantly. Salary hikes and job satisfaction show relatively stable patterns, indicating they are not primary drivers on their own.

8. Outliers were kept intentionally because they highlight extreme but important employee behaviors, helping identify both high-risk and highly stable segments.

Overall, attrition is not caused by a single factor, but by a combination of:

1. Low salary

2. Early career stage

3. Certain job roles (especially sales)

4. Longer commute distances
