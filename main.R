
# Stress Testing and Scenario Analysis using R

# Required Libraries
library(ggplot2)
library(reshape2)

# Define Economic Scenarios and Portfolio
# ... (similar to the content provided above)

# Visualization
ggplot(data, aes(x = Asset, y = Scenario, fill = Return)) + 
  geom_tile() + 
  scale_fill_gradient2(low = 'red', mid = 'white', high = 'green', midpoint = 0) + 
  geom_text(aes(label=sprintf('%.2f%%', Return*100)), vjust=1) +
  labs(title = 'Stress Testing and Scenario Analysis: Asset Returns', 
       fill = 'Return', 
       x = 'Asset', 
       y = 'Scenario') +
  theme_minimal()
