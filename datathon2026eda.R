# Exploratory Data Analysis: Tumour radius distribution by diagnosis
# Objective: Assess separability between benign and malignant tumours
# using mean radius as an interpretable morphological feature

# Load required libraries for data manipulation and visualization 
library(tidyverse)

# Define column names based on dataset documentation (UCI WDBC dataset)
# This ensures correct labeling when reading raw data (no header provided)
cols <- c(
  "id_num", "diagnosis",
  "radius_mean", "texture_mean", "perimeter_mean", "area_mean", "smoothness_mean",
  "compactness_mean", "concavity_mean", "concave_points_mean", "symmetry_mean",
  "fractal_dimension_mean",
  "radius_se", "texture_se", "perimeter_se", "area_se", "smoothness_se",
  "compactness_se", "concavity_se", "concave_points_se", "symmetry_se",
  "fractal_dimension_se",
  "radius_worst", "texture_worst", "perimeter_worst", "area_worst",
  "smoothness_worst", "compactness_worst", "concavity_worst",
  "concave_points_worst", "symmetry_worst", "fractal_dimension_worst"
  )

# Load dataset (no header in original file)
df <- read.csv("wdbc.data", header = FALSE, col.names = cols)

# Preview first few rows of dataset (sanity check)
head(df)

# Convert diagnosis to factor for modeling/plotting and assign labels
df$diagnosis <- factor(df$diagnosis, 
                       levels = c("B", "M"),
                       labels = c("Benign", "Malignant"))

# Visualize distribution of tumour radius by diagnosis
# to assess class separability between benign and malignant tumours
ggplot(df, aes(x = diagnosis, y = radius_mean, fill = diagnosis)) +
  # Violin plot shows full distribution (density shape)
  geom_violin(trim = FALSE, alpha = 0.35, color = NA) +
  # Boxplot overlays median, IQR, and overall spread
  geom_boxplot(width = 0.12, fill = "white", color = "grey25",
               outlier.shape = NA, alpha = 0.9) +
  
  # Custom color palette for clear class distinction
  scale_fill_manual(values = c(
    "Benign" = "#A8D5BA",      # slightly richer soft green
    "Malignant" = "#F3A7A7"    # slightly deeper pastel pink
  )) +
  
  # Labels for clarity (note: units are relative, not physical mm)
  labs(
    title = "Tumour Radius Distribution by Diagnosis",
    x = "Diagnosis",
    y = "Mean Tumour Radius (relative units)"
  ) +
  
  # Minimal theme for clean, publication-style aesthetic
  theme_minimal(base_size = 16, base_family = "serif") +
  
  # Additional styling for readability and emphasis
  theme(
    legend.position = "none",
    plot.title = element_text(face = "bold", size = 20, hjust = 0.5),
    axis.title = element_text(size = 16),
    axis.text = element_text(size = 14),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank()
  )
