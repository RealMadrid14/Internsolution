setwd("D:/OneDrive - University of Florida/Job/Application Quesions")
Shopify <- read.csv("Shopify.csv")
#Q1
#a.
boxplot(Shopify$total_items)###Because of the outliers (total_items=2000, the AOV would be improved a lot. Thus, it would be going wrong) 
nique(Shopify$total_items)
Shopify_1 <- Shopify[Shopify$total_items != 2000,]###We need to delete the outlier(total_items=2000)
(AOV_NEW <- sum(Shopify_1$order_amount)/nrow(Shopify_1))

#b.
#####Metric1: Median order value
#####Metric2: Use the sum of order amount by shop as the metric 
#c.
(Metric1 <- median(Shopify$order_amount))
library(dplyr)
Shopify_2 <- group_by(Shopify, shop_id)###The price of 
Metric2 <- summarise(Shopify_2, order_amount_by_shop = sum(order_amount))
View(Metric2)