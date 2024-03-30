# Tutorial example
library(ggplot2)

## -----------------------------------------------
## Import body weight data from tab-delimited file
## -----------------------------------------------

bw_df = read.table(
  file = './datasets/mouse_bodyweights_chemicalX.txt',
  header = TRUE, 
  sep = '\t' 
)

## -----------------------------------------------
## Refactor the dose levels
## -----------------------------------------------

group_order = c('Control', 'Low Dose', 'Medium Dose', 'High Dose')
group_levels = factor(bw_df$Group,
                      levels = group_order 
) 
bw_df$Group = group_levels

## -----------------------------------------------
## Plot the body weights
## -----------------------------------------------

p <- ggplot(bw_df, aes(x = Group, y = Value, fill = Group)) +
  geom_boxplot() +
  labs(title = "Boxplot Example", 
       x = "Group", 
       y = "Value") +
  theme_bw()

ggsave('./outputs/bw_plot.png', plot = p, width = 6, height = 6, dpi = 300)