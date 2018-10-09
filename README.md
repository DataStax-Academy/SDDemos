## Overview
This is a demo made up of three seperate ones and is intended to be used in datastax developer days.

It includes:
* Search demo that showcases geospacial searching.
* DSE Anylytics notebook that uses spark SQL.
* Graph Notebook that showcases DSE Graph basic usage.

# Instructions

To set up the demo:

# Project setup
```
cd /tmp
git clone https://github.com/mando222/SDDemos.git
cd SDDemo
sudo ./startup all
# Total setup should be about 2 hours to complete
# Start geo app
java -jar target/geofinder-api.jar -h node1
```




## Search Demo
This is a simple web app to demonstrate some of the geospatial capabilities in DSE.  It is not meant to be a demonstration of how to build a REST API. I used the [spark java framework](http://sparkjava.com/) (not to be confused with Apache Spark) for its lean and simple approach.

The web app is exposed on port 9000

If you are running this from assethub, you will need to point your web browser at:

http://node0_ip:9000

# DSE Graph Demo

DSE Graph eamples of loading data and analytics.

## Start exploring using DataStax Studio 6!
