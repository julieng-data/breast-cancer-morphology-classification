# Breast Tumour Classification from Morphological Features

## Overview
This project was developed during the **National Canadian Medical Datathon 2026**, a time-constrained (2-day) competition bringing together students from diverse backgrounds including medicine, computing, and data science.

The goal was to investigate whether simple, interpretable tumour morphology features could be used to predict breast tumour malignancy using the Breast Cancer Wisconsin (Diagnostic) dataset.

Given the **diverse judging panel** (clinicians, researchers, and technical experts), the project was designed to be both **technically sound and easily interpretable**, emphasizing clarity, intuition, and real-world relevance.

---

## Objective
To assess whether a small set of interpretable morphological features can distinguish between benign and malignant tumours, and to build a simple predictive model.

---

## Methods

### 1. Exploratory Data Analysis (R)
- Visualized feature distributions using violin plots
- Assessed class separability between benign and malignant tumours

### 2. Model Development (Python)
- Logistic Regression (chosen for interpretability)
- Train/test split
- Feature scaling using StandardScaler

### 3. Model Evaluation
- ROC-AUC (~0.99)
- Classification performance on test set

---

## Key Results
- Clear separation between benign and malignant tumour classes
- High predictive performance (AUC ≈ 0.99)
- Demonstrated that simple morphological features can be informative

---

## Interactive Component
A morphology simulation tool was developed to demonstrate how changes in tumour features affect predicted malignancy probability.

This was designed to make the model more **intuitive and accessible**, especially for non-technical audiences.

---

## Limitations
- Small, curated dataset (limited generalizability)
- Limited feature set (4 variables due to time constraints)
- No external validation
- Not representative of real-world clinical deployment
- Does not replace clinical judgment

---

## Future Work
- Incorporate additional morphological and molecular features
- Validate model on external datasets
- Develop clinical decision-support interfaces
- Explore integration with imaging data

---

## Tools Used
- R (ggplot2, tidyverse) for EDA
- Python (scikit-learn) for modeling
- Logistic Regression

---

## Dataset
Breast Cancer Wisconsin (Diagnostic) Dataset  
UCI Machine Learning Repository

---

## Context
This project was completed within a **2-day datathon setting**, requiring rapid prototyping, prioritization of interpretable features, and clear communication across a **multidisciplinary audience**.

As a result, the project emphasizes:
- simplicity over complexity  
- interpretability over black-box modeling  
- communication alongside technical implementation

---

## Contributors
- Julie Nguyen  
- Sarah Stevenson
