
## Overview
This is a simple web app to demonstrate some of the geospatial capabilities in DSE.  It is not meant to be a demonstration of how to build a REST API. I used the [spark java framework](http://sparkjava.com/) (not to be confused with Apache Spark) for its lean and simple approach.

The web app is exposed on port 9000

If you are running this from assethub, you will need to point your web browser at:

http://node0_ip:9000

# DSE Graph example

DSE Graph eamples of loading data and analytics.

## Data set

[Synthetic Financial Datasets For Fraud Detection](https://www.kaggle.com/ntnu-testimon/paysim1)

Simulated mobile money transactions based on a sample of real transactions extracted from one month of financial logs from a mobile money service.

The fraudulent agents inside the simulation inject fraud transaction occasionally (marked in `isFraud` column).

## Start exploring!

Using DataStax Studio 6.0 use the studio notebook and see some example analytics using gremlin query.

