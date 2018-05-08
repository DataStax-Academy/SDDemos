ALTER  KEYSPACE dse_analytics WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy',  'DC1' : 3};
ALTER  KEYSPACE dse_leases WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy',  'DC1' : 3};
ALTER  KEYSPACE dsefs WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy',  'DC1' : 3};
ALTER  KEYSPACE HiveMetaStore WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy',  'DC1' : 3};

CREATE KEYSPACE simplegeo WITH replication = {'class': 'NetworkTopologyStrategy', 'DC1': 3};

CREATE TABLE simplegeo.locations (
    id text PRIMARY KEY,
    address text,
    category text,
    city text,
    geo 'org.apache.cassandra.db.marshal.PointType',
    menulink text,
    name text,
    name_lowercase text,
    phone text,
    post_code text,
    province text,
    source text,
    subcategory text,
    tags list<text>,
    type text,
    website text
);
