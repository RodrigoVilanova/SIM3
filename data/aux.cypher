
//LARGE DELETE
//https://neo4j.com/developer/kb/large-delete-transaction-best-practices-in-neo4j/?utm_source=Google&utm_medium=PaidSearch&utm_campaign=Evergreen&utm_content=AMS-Search-SEMCE-DSA-None-SEM-SEM-NonABM&utm_term=&utm_adgroup=DSA&gad_source=1&gclid=Cj0KCQjw0MexBhD3ARIsAEI3WHL8Zs5zOwREN-mDdhtOpvshWdHoViuPGohu2a8xtD5IvJWDkDj7gmUaAgQnEALw_wcB
MATCH (n)
DETACH DELETE n;

// Take the first 10k nodes and their rels (if more than 100 rels / node on average lower this number)
MATCH (a)-[r]-(b)
WITH a LIMIT 10000
MATCH (a)-[r]-(b)
DELETE a,r,b
RETURN count(*);


MATCH
    (a)-[r:`BELONGS TO`]-(b)
    return a,r,b;

MATCH (a)
return a
limit 100;

MATCH (a)-[r]-(b)
return a,r,b
limit 100;
