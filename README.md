# Mall-Customers-Segmentation
## Problem statement: 
Malls and Shopping complexes are often indulged in a race to increase their customers and hence making huge profits.   By analyzing this dataset, we are going to build a model to cluster the customers based on their Gender, Age, Annual Income and Spending score by using K Means clustering algorithm. 
## Software requirements 
This project uses the following softwares and libraries:
- RStudio (https://rstudio.com/)
- KMeans (https://www.jstor.org/stable/2346830?origin=crossref)
## Data munging:
The dataset has 5 variables and no missing value.The Gender column is Character type data. Let's convert the data into numeric type, and drop the 
CustomerID column as it could add some complexity in the model. 
## Hyperparameter Optimizing.
After data munging part, we come to Hyperparameter optimizing part, in which we plotted an Elbow plot (# of clusters VS Sum Squared Distance) and predicted the value of K, that is number of clusters, to be 5, becuase after k = 5, the curve of Sum Square Distance stabilizes. Click here (https://github.com/NikhilSalv/Mall-Customers-Segmentation/blob/main/Elbowplot%20Mall%20data.png) to check the Elbowplot of K vs SSD.

## Running the model on the dataset.
After predicting the value of K, we run the K-Means Clustering algorithm on the SNS dataset. The output denotes the 5 clusters. The output column is row-wise combined with the original dataset. And we can see that which record belongs to which cluster. We can see that, one cluster determines customers with high annual income and spending score. This cluster may not be the target of the mall/ shopping complex as this group of customers might be satisfied with the mall facilities provided. Another cluster determines customers with high annual income but low spending score. This could be the potential target customers of the mall. With this model, we can build marketing strategy to target potential customers. 
