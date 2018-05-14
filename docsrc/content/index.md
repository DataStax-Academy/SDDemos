---
date: 2017-05-19T21:52:39
title: DSE Spark Rest API Example
type: index
weight: 0
---

Geofinder API Script
===================

This is a guide for how to use the geo demo asset for DSE Search.

### Motivation
The Geofinder API sample application is a good way to showcase and quickly demonstrate the capability of DataStax Enterprise (DSE) Max and it's DSE Search functionality. The sample application is meant to be a way to show how different aspects of DSE Search can be surfaced through the application layer. Keep in mind that the demo is a conduit for the messaging of DSE, not the end user application itself, so the messaging should correlate. 

### What is included?
This field asset includes an interactive map demonstrating the following DSE Search functionality:

* Type Ahead searching
* CQL Search syntax
* Geospatial Query
* Facet Query

### Business Take Aways
Give your end users the search interface they expect over the transactional data stored in your DSE platform. In today's consumer driven world, end users expect to be able to search over their data, whether by typing or navigating a map when looking for certain points of interest (POI).

### Technical Take Aways
The Geofinder application leverages DSE Search's geospatial, type-ahead, and facet query capabilities to provide the easy-to-use UI end users expect. As new POI data is added to the cluster, it will be indexed immediately and be searchable as soon as it is ingested.

# DSE Graph example

DSE Graph eamples of loading data and analytics.

## Data set

[Synthetic Financial Datasets For Fraud Detection](https://www.kaggle.com/ntnu-testimon/paysim1)

Simulated mobile money transactions based on a sample of real transactions extracted from one month of financial logs from a mobile money service.

The fraudulent agents inside the simulation inject fraud transaction occasionally (marked in `isFraud` column).

## Graph schema

For complete schema, see schema.groovy.

Use gremlin console to create graph called `fraud`.

```
$ dse gremlin-console -e schema.groovy
```

## Data loading

Data loading for this project is done in two steps.

- Preprocess data
- Load to DSE Graph

### Prerequisite

Download data from Kaggle page linked above.
Unzip it, and put the file to directory `/data/fraud/transactions.csv` inside DSEFS.

```
$ unzip paysim1.zip
$ dse fs "mkdir /data"
$ dse fs "mkdir /data/fraud"
$ dse fs "put PS_20174392719_1491204439457_log.csv /data/fraud/transactions.csv"
```

### Preprocess data

Preprocessing loads data you put is DSEFS and produces two parquet file.

- /data/fraud/preprocessed/transactions.parquet
- /data/fraud/preprocessed/edges.parquet

The former file contains transactions with generated transaction ID (`tranId` UUID). The latter contains transaction to customer relationship (from, to) so we can easily add edges later.

To preprocess, submit spark job as follows:

```
$ dse spark-submit preprocess_data.py
```

### Loading to DSE Graph

Once you preprocessed, run the second spark job to load data to DSE Graph.

```
$ dse spark-submit pyspark_loader.py
```

## Start exploring!

Using DataStax Studio 6.0, you can import studio notebook in this repository and see some example analytics using gremlin query.
