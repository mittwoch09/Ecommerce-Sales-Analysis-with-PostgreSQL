# Project : Ecommerce Sales Analysis with PostgreSQL
![project postgresql](https://img.shields.io/badge/project-postgresql-brightgreen)

## Summary
* [Introduction](#introduction)
* [Data Source](#data-source)
* [Database Schema](#database-schema)
* [Structure](#structure)
* [Notes](#notes)

## Introduction

The purpose of this project is to analyze KPI(Key Performance Indicator)s in the retail market using PostgreSQL for e-commerce dataset composed of various tables.

The Olist database is stored in my local desktop and connected to Jupyter Notebook.

## Problem Statement

Churn analysis(Customer side)
- reason of high churn
    - review?
    - delivery?

Conversion Rate(Seller side)
- business type of MQL?
- relations of SDR/SR?

## Data Source

The dataset was originally posted on Kaggle and contains almost 100k orders from 2016 to 2018 made at multiple marketplaces in Brazil. This is a Brazilian ecommerce public dataset of orders made at Olist Store.

The database has 11 datasets which contain different information of customers, sellers, orders procedure, etc.

1. [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce):

    - olist_customers_dataset
    - olist_geolocation_dataset
    - olist_order_items_dataset
    - olist_order_payments_dataset
    - olist_order_reviews_dataset
    - olist_orders_dataset
    - olist_products_dataset
    - olist_sellers_dataset
    - product_category_name_translation

2. [Marketing Funnel by Olist](https://www.kaggle.com/datasets/olistbr/marketing-funnel-olist):

    - olist_closed_deals_dataset
    - olist_marketing_qualified_leads_dataset

## Database Schema
<img src="https://github.com/mittwoch09/Ecommerce-Sales-Analysis-with-PostgreSQL/blob/main/Images/schema_01.png" width=50% height=50%>
<img src="https://github.com/mittwoch09/Ecommerce-Sales-Analysis-with-PostgreSQL/blob/main/Images/schema_02.png" width=50% height=50%>

## Structure

This repository includes the following files:

- Query Notebook
    - `connect-and-road-dataset.ipynb` - This notebook is to create and road the tables. Understand the details of each table and domain.
    - There are 7 notebook that analyze the various KPIs.
- [Dataset](Dataset/)
    - There are 11 dataset with .csv file format.
- [Iamges](Images/)
    - There are images of the schema design of the database.
- [sql](sql/)
    - Creating the tables using queries. I usually use a [DBeaver](https://dbeaver.io/) as my database tool.

## Notes

Olist is neither an E-commerce company nor a marketplace itself. Olist provides a platform for merchants to sell their prodcuts online within a marketplace.

I tried to write a queriesery by referring to this [Modern SQL Style Guide](https://gist.github.com/mattmc3/38a85e6a4ca1093816c08d4815fbebfb)
