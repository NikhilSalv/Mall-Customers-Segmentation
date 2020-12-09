# Problem statement: Malls and Shopping complexes are often indulged in a race to increase 
# their customers and hence making huge profits. 
# By analyzing this dataset, we are going to build a model to cluster the customers based on 
# their Gender, Age, Annual Income and Spending score by using K Means clustering algorithm.

# Lets read and prepare the data. 
mall<- read.csv("E:/DATA scientist/R/Mallkmeans/mall_kmeans.csv", na.strings = "")
dim(mall)
View(mall)
colSums(is.na(mall))

# The dataset has 5 variables and no missing value. 
# The Gender column is Character type data. Let's convert the data into numeric type, and drop the 
# CustomerID column as it could add some complexity in the model. 

mall$Genre<- as.numeric(as.factor(mall$Genre))
mall$CustomerID <- NULL

# Hyperparameter optimization 
# Let's plot the Elbowplot to predict the value of k (number of clusters).
num<- seq(1:10)
empty_list2 <- list()
for (i in num) {
  kmeans_model_mall <- kmeans(mall, i, iter.max = 10)
  empty_list2 <- append(empty_list2, kmeans_model_mall$tot.withinss)
}
abc = unlist(empty_list2)
plot(abc, type = "b", xlab = "Number of clusters", ylab = " SSD", col = "blue")

# By looking at the plot, we can predict that at K = 5, the Elbowplot stabilizes . 
# Hence, we choose the value of K =  5 to build our model. 

kmeans_model_mall5 <- kmeans(mall, 5, iter.max = 10)
kmeans_model_mall5$tot.withinss
View(kmeans_model_mall5$centers)
df_with_lable5<- data.frame(cbind(mall,kmeans_model_mall5$cluster))
colnames(df_with_lable5)[5]<- "Cluster number"
View(df_with_lable5)