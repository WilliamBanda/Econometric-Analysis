# Econometric-Analysis
# Language Proficiency Program Analysis Repository

## Summary

This GitHub repository contains the datasets and analysis scripts related to a study evaluating the impact of a language proficiency program implemented by the World Bank in two states. The primary objective of the study is to assess how the distribution of educational materials (books) to certain schools affects students' language proficiency, as measured by standardized language scores.

### Repository Contents

**Datasets:**
  - `data_state_1.csv`: Contains data for State 1, including student demographics, treatment status, and standardized language scores.
  - `data_state_2.csv`: Contains data for State 2 with similar variables as in State 1.

**R Scripts:**
  - `analysis_script.R`: An R script that performs data loading, preprocessing, and econometric analysis. The script includes calculations for summary statistics, regression models, and clustering of standard errors at the school level.

**Report:**
  - `analysis_report.md`: A comprehensive report summarizing the findings of the econometric analysis. It includes an introduction to the study, summary statistics, detailed regression results for both states, and conclusions regarding the effectiveness of the language proficiency program.

### Purpose

This repository serves as a resource for researchers and practitioners interested in educational interventions and their impacts on student outcomes. It provides a clear methodology for conducting similar analyses and offers insights into the effectiveness of programs aimed at improving language proficiency among students.

### Usage

To replicate the analysis:
1. Clone this repository to your local machine.
2. Ensure you have R and necessary packages installed (e.g., `dplyr`, `lmtest`, `sandwich`).
3. Run the `analysis_script.R` to perform the analysis.
4. Review the findings in `analysis_report.md`.

For any questions or contributions, please feel free to open an issue or submit a pull request.
