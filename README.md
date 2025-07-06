# Undergraduate_Thesis

This repository contains the code, scripts, and documentation for my undergraduate thesis, which focuses on the detection of expression quantitative trait loci (eQTLs) at the single-cell level using scRNA-seq data.

## Project Overview

The primary goal of this project is to evaluate and improve methods for detecting eQTLs from single-cell RNA sequencing (scRNA-seq) data. In particular, it explores the capabilities and limitations of the [eQTLsingle](https://github.com/horsedayday/eQTLsingle) analysis tool, providing practical scripts and workflows for its application.

Key objectives include:
- Demonstrating the use of eQTLsingle for finding eQTLs in single-cell datasets.
- Identifying and addressing limitations inherent to eQTLsingle, especially those arising from the exclusive use of scRNA-seq data.
- Proposing solutions and improvements based on relevant literature.

## Repository Structure

- `CompBio_Research/eQTLsingle Scripts/`: Scripts for data preparation and running eQTLsingle analyses.
- `CompBio_Research/monocle test/`: Example scripts to preprocess data and attempt eQTL analysis with Monocle (work in progress).
- `CompBio_Research/File conversion scripts/`: Utility scripts for converting between CSV, RDS, and RDA data formats.
- `CompBio_Research/Test data/`: Example scripts for data conversion and processing.

## Technologies Used

- R and several R packages (`eQTLsingle`, `monocle`, `Matrix`, `dplyr`, `ggplot2`, etc.)
- Custom scripts for data wrangling and pipeline automation.

## Getting Started

1. Prepare your single-cell gene expression and SNV data in the required format (see scripts for examples).
2. Use the provided file conversion scripts as needed to generate compatible input files for eQTLsingle.
3. Run the analysis scripts to identify eQTLs and visualize results.
4. Refer to the script comments for further instructions and customization options.

## Acknowledgments

- [eQTLsingle](https://github.com/horsedayday/eQTLsingle) for providing the core analysis functionality.
- All referenced packages and resources in the R ecosystem.

---

This project aims to contribute to the field of computational biology by making single-cell eQTL discovery more accessible and robust. For more details, see the individual script files and documentation within each directory.
