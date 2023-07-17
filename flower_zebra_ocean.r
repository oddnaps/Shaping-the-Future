# 1. Set up the directory
setwd("/Shaping-the-Future")

# 2. Read in libraries
library(dplyr)
library(ggplot2)
library(readr)
library(stats)

# 3. Load dataset
data <- read_csv("data.csv")

# 4. Transform data
data <- mutate(data,
     Age = as.numeric(Age),
     Income = as.numeric(Income)
)

# 5. Create summary statistics
summary_stat <- describe(data)
print(summary_stat)

# 6. Clean data
clean_data <- na.omit(data)

# 7. Subset data
subset_data <- filter(clean_data, Income > 1000)

# 8. Group data by gender
grouped_data <- group_by(subset_data, Gender)

# 9. Summarise data
summary_data <- summarize(grouped_data,
     avg_age = mean(Age),
     avg_income = mean(Income)
)

# 10. Create a bar plot
barplot <- ggplot(summary_data, aes(x = Gender, y = avg_income)) + 
        geom_col(fill = 'royalblue') +
        labs(x = 'Gender', y = 'Average Income')

# 11. Create a line plot
lineplot <- ggplot(summary_data, aes(x = Gender, y = avg_age)) +
        geom_line(color = 'royalblue', size = 1.5) + 
        labs(x = 'Gender', y = 'Average Age')

# 12. Save plots
ggsave("barplot.jpg", barplot, dpi = 100)
ggsave("lineplot.jpg", lineplot, dpi = 100)

# 13. Calculate correlation
correlation <- cor.test(data$Age, data$Income)

# 14. Print results
print(correlation)

# 15. Create correlation matrix
corr_matrix <- cor(data)

# 16. Create a heatmap
heatmap <- ggplot(data, aes(x = Age, y = Income)) +
        geom_tile(aes(fill = corr_matrix)) +
        scale_fill_gradient(low = "white", high = "royalblue") +
        labs(x = 'Age', y = 'Income')

# 17. Save plots
ggsave("heatmap.jpg", heatmap, dpi = 100)

# 18. Predict income using linear regression
model <- lm (Income ~ Age, data = data)

# 19. Summarize the model
summary_model <- summary(model)

# 20. Print results
print(summary_model)

# 21. Generate predictions
predictions <- predict (model, newdata=data)

# 22. Add predictions to data frame
data$predictions <- predictions

# 23. Calculate residuals
residuals <- data$Income - data$predictions

# 24. Add residuals to data frame
data$residuals <- residuals

# 25. Create a residual plot
res_plot <- ggplot(data, aes(x = Age, y = residuals)) +
         geom_point(aes(color = residuals), size =3) +
         geom_abline(intercept = 0, slope = 0, color = 'royalblue') +
         labs(x = 'Age', y = 'Residuals')

# 26. Save plot
ggsave("res_plot.jpg", res_plot, dpi = 100)

# 27. Calculate RMSE
rmse <- round(sqrt(mean(residuals^2)),2)

# 28. Print results
print(paste("RMSE:", rmse))

# 29. Create a new variable
data$pred_diff <- data$Income - data$predictions

# 30. Calculate summary statistics
summary_diff <- summarise(data,
    diff_mean = mean(pred_diff),
    diff_median = median(pred_diff),
    diff_sd = sd(pred_diff)
)

# 31. Print results
print(summary_diff)

# 32. Create a scatter plot
scatter_plot <- ggplot(data, aes(x = Age, y = Income)) +
        geom_point(aes(color = pred_diff), size =3) +
        geom_abline(intercept = 0, slope = 0, color = 'royalblue') +
        geom_smooth(method = 'lm', color = 'indianred') +
        labs(x = 'Age', y = 'Income')

# 33. Save plot
ggsave("scatter_plot.jpg", scatter_plot, dpi = 100)

# 34. Create a new variable
data$income_bin <- cut(data$Income, breaks = c(0, 10000, 20000, 30000))

# 35. Create a table
tab <- table(data$income_bin, data$Gender)

# 36. Print results
print(tab)

# 37. Calculate proportions
prop <- prop.table(tab,margin = 1)

# 38. Print results
print(prop)

# 39. Create stacked bar plot
bar_plot <- ggplot(data, aes(x = income_bin, fill = Gender)) +
        geom_bar(position = 'fill') +
        labs(x = 'Income', y = 'Proportion')

# 40. Save plot
ggsave("bar_plot.jpg", bar_plot, dpi = 100)

# 41. Load library
library(cluster)

# 42. Create distance matrix
dist_mat <- dist(data[9:10])

# 43. Create hierarchical clustering
clust <- hclust(dist_mat, method = 'ward.D2')

# 44. Plot dendrogram
plot_dendro <- plot(clust)

# 45. Save plot
ggsave("plot_dendro.jpg", plot_dendro, dpi = 100)

# 46. Cut the dendrogram
cut_dendro <- cutree(clust, k = 2)

# 47. Add clustering labels to data frame
data$cluster <- cut_dendro

# 48. Create a box plot
box_plot <- ggplot(data, aes(x = Age, y = Income, fill = cluster)) +
        geom_boxplot(alpha = 0.4) +
        labs(x = 'Age', y = 'Income')

# 49. Save plot
ggsave("box_plot.jpg", box_plot, dpi = 100)

# 50. Create a scatter plot
scatter_plot_2 <- ggplot(data, aes(x = Age, y = Income, color = Gender)) +
        geom_point(size = 3) +
        geom_smooth(method = 'lm', alpha = 0.3, color = 'royalblue') +
        scale_color_manual(values = c('#CC0000', '#0066CC')) +
        labs(x = 'Age', y = 'Income')

# 51. Save plot
ggsave("scatter_plot_2.jpg", scatter_plot_2, dpi = 100)

# 52. Load library
library(randomForest)

# 53. Set seed
set.seed(123)

# 54. Build random forest model
model_rf <- randomForest(Income ~ Age, data = data, ntree = 200)

# 55. Print model
print(model_rf)

# 56. Calculate importance
imp_rf <- importance(model_rf)

# 57. Print importance
print(imp_rf)

# 58. Create a bar plot
bar_plot_2 <- ggplot(imp_rf, aes(x = Age, y = Overall)) + 
        geom_col(fill = 'royalblue') +
        labs(x = 'Features', y = 'Importance')

# 59. Save plot
ggsave("bar_plot_2.jpg", bar_plot_2, dpi = 100)

# 60. Generate predictions
predictions_rf <- predict (model_rf, newdata=data)

# 61. Add predictions to data frame
data$rf_predictions <- predictions_rf

# 62. Calculate residuals
residuals_rf <- data$Income - data$rf_predictions

# 63. Add residuals to data frame
data$rf_residuals <- residuals_rf

# 64. Create a residual plot
res_plot_2 <- ggplot(data, aes(x = Age, y = rf_residuals)) +
         geom_point(aes(color = rf_residuals), size =3) +
         geom_abline(intercept = 0, slope = 0, color = 'royalblue') +
         labs(x = 'Age', y = 'Residuals')

# 65. Save plot
ggsave("res_plot_2.jpg", res_plot_2, dpi = 100)

# 66. Calculate RMSE
rmse_rf <- round(sqrt(mean(residuals_rf^2)),2)

# 67. Print results
print(paste("RMSE:", rmse_rf))

# 68. Create a new variable
data$rf_pred_diff <- data$Income - data$rf_predictions

# 69. Calculate summary statistics
summary_diff_2 <- summarise(data,
    rf_diff_mean = mean(rf_pred_diff),
    rf_diff_median = median(rf_pred_diff),
    rf_diff_sd = sd(rf_pred_diff)
)

# 70. Print results
print(summary_diff_2)

# 71. Create a scatter plot
scatter_plot_3 <- ggplot(data, aes(x = Age, y = Income)) +
        geom_point(aes(color = rf_pred_diff), size =3) +
        geom_abline(intercept = 0, slope = 0, color = 'royalblue') +
        geom_smooth(method = 'lm', color = 'indianred') +
        labs(x = 'Age', y = 'Income')

# 72. Save plot
ggsave("scatter_plot_3.jpg", scatter_plot_3, dpi = 100)

# 73. Create a new variable
data$rf_income_bin <- cut(data$Income, breaks = c(0, 10000, 20000, 30000))

# 74. Create a table
tab_2 <- table(data$rf_income_bin, data$Gender)

# 75. Print results
print(tab_2)

# 76. Calculate proportions
prop_2 <- prop.table(tab_2,margin = 1)

# 77. Print results
print(prop_2)

# 78. Create stacked bar plot
bar_plot_3 <- ggplot(data, aes(x = rf_income_bin, fill = Gender)) +
        geom_bar(position = 'fill') +
        labs(x = 'Income', y = 'Proportion')

# 79. Save plot
ggsave("bar_plot_3.jpg", bar_plot_3, dpi = 100)

# 80. Create a line plot
lineplot_2 <- ggplot(data, aes(x = Gender, y = Income, fill = Gender)) +
        geom_line(aes(group = 1), color = 'indianred', size = 1.5, alpha = 0.5) + 
        geom_point(aes(fill = Gender), color = 'indianred', size = 2) +
        labs(x = 'Gender', y = 'Income')

# 81. Save plot
ggsave("lineplot_2.jpg", lineplot_2, dpi = 100)

# 82. Create a new variable
data$cluster_label <- ifelse(data$cluster == 1, 'Cluster 1', 'Cluster 2')

# 83. Create a box plot
box_plot_2 <- ggplot(data, aes(x = Age, y = Income, fill = cluster_label)) +
        geom_boxplot(alpha = 0.4) +
        labs(x = 'Age', y = 'Income')

# 84. Save plot
ggsave("box_plot_2.jpg", box_plot_2, dpi = 100)

# 85. Create a line plot
lineplot_3 <- ggplot(data, aes(x = cluster_label, y = Income)) +
        geom_line(aes(group = 1), color = 'indianred', size = 1.5, alpha = 0.5) + 
        geom_point(aes(fill = cluster_label), color = 'indianred', size = 2) +
        labs(x = 'Cluster', y = 'Income')

# 86. Save plot
ggsave("lineplot_3.jpg", lineplot_3, dpi = 100)

# 87. Get model accuracy
model_acc <- round(mean(predict(model_rf, data) == data$Income, na.rm = TRUE),2)

# 88. Print results
print(paste("Accuracy:", model_acc, "%"))

# 89. Get feature importance
imp <- importance(model_rf,type = 2)

# 90. Create a bar plot
bar_plot_4 <- ggplot(imp, aes(x = reorder(Age,-Overall), y = Overall)) + 
        geom_col(fill = 'royalblue') +
        labs(x = 'Features', y = 'Importance', 
             title = 'Model Performance')

# 91. Save plot
ggsave("bar_plot_4.jpg", bar_plot_4, dpi = 100)

# 92. Create a scatter plot
scatter_plot_4 <- ggplot(data, aes(x = Age, y = Income, color = Gender)) +
        geom_point(size = 3) +
        geom_smooth(method = 'lm', alpha = 0.3, color = 'royalblue') +
        labs(x = 'Age', y = 'Income',
             title = 'Model Performance')

# 93. Save plot
ggsave("scatter_plot_4.jpg", scatter_plot_4, dpi = 100)

# 94. Create a box plot
box_plot_3 <- ggplot(data, aes(x = Age,