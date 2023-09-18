
# Stress Testing and Scenario Analysis using R

# Required Libraries
library(ggplot2)
library(reshape2)

# Define Economic Scenarios and Portfolio
# ... (similar to the content provided above)
# Required Libraries
library(ggplot2)
library(reshape2)

# Define the asset weights
weights <- c(Stocks = 0.50, Bonds = 0.30, Cash = 0.20)

# Define the expected returns for each scenario
returns_high_inflation <- c(Stocks = -0.10, Bonds = -0.05, Cash = -0.05)
returns_recession <- c(Stocks = -0.20, Bonds = 0.05, Cash = 0.01)

# Compute the portfolio returns for each scenario
portfolio_return_high_inflation <- sum(weights * returns_high_inflation)
portfolio_return_recession <- sum(weights * returns_recession)

# Create a dataframe for visualization
data <- data.frame(
  Asset = c(rep(names(weights), 2)),
  Scenario = c(rep("High Inflation", length(weights)), rep("Recession", length(weights))),
  Return = c(returns_high_inflation, returns_recession)
)


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
