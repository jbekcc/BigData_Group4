#BigData Group4 Colleges
Comparing the US Dept. of Education: College Scorecard dataset against the World University Rankings dataset.
College Scorecard: https://www.kaggle.com/kaggle/college-scorecard
World University Rankings: https://www.kaggle.com/mylesoneill/world-university-rankings

1. How does the ranking of the university correspond with admission rate?
  For public schools, rank barely affects admisson rate.  There is a very small slope for the best fit line which shows that the lower the rank (higher number rank) the higher the admission rate.  So the better the school the small percent of applicants are admitted.
2. Is there a correlation between cost of tuition and university ranking?
  Yes, the better (low number rank) the school is the more expensice it is
3. What is the correlation between average SAT score and admission rate?
  Yes the better the school the higher the average SAT school and the lower the admission rate.  Admission rate and average SAT score are inversly related

##Script Instructions
1. Download the **CWUR_SCORE_PUBLIC.csv** and **TIMES_SCORE_PUBLIC.csv**
2. Download and run "scripts for public schools.r" to get the images (also in the repo)

###Side Note
**Untitled.ipynb** has the work of combining the datasets and creating the condensed datasets used in the **collegeRankingScript.r** file.  **collegeRankingScript.r** also separates them into a subset of Public schools only
