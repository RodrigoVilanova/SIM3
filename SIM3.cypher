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

CREATE 
	(O:Organization {Methodology: 'SIM3'}),
    (H:Human {Methodology: 'SIM3'}),
	(T:Tools {Methodology: 'SIM3'}),
	(P:Processes {Methodology: 'SIM3'}),

    (`O-1`:`Mandate` {Parameter: 'O-1'}) -[:`BELONGS TO`]->(O),
    (`O-2`:`Constituency` {Parameter: 'O-2'})-[:`BELONGS TO`]->(O),
    (`O-3`:`Authority` {Parameter: 'O-3'})-[:`BELONGS TO`]->(O),
    (`O-4`:`Responsibility` {Parameter: 'O-4'})-[:`BELONGS TO`]->(O),
    (`O-5`:`Service Description` {Parameter: 'O-5'})-[:`BELONGS TO`]->(O),
    (`O-6`:`Public Media Policy` {Parameter: 'O-6'})-[:`BELONGS TO`]->(O),
    (`O-7`:`Service Level Description` {Parameter: 'O-7'})-[:`BELONGS TO`]->(O),
    (`O-8`:`Incident Classification` {Parameter: 'O-8'})-[:`BELONGS TO`]->(O),
    (`O-9`:`Participation in CSIRT Systems` {Parameter: 'O-9'})-[:`BELONGS TO`]->(O),
    (`O-10`:`Organisational Framework` {Parameter: 'O-10'})-[:`BELONGS TO`]->(O),
    (`O-11`:`Security Policy` {Parameter: 'O-11'})-[:`BELONGS TO`]->(O),
    (`H-1`:`Code of Conduct/Practice/Ethics` {Parameter: 'H-1'})-[:`BELONGS TO`]->(H),
    (`H-2`:`Staff Resilience` {Parameter: 'H-2'})-[:`BELONGS TO`]->(H),
    (`H-3`:`Skillset Description` {Parameter: 'H-3'})-[:`BELONGS TO`]->(H),
    (`H-4`:`Staff Development` {Parameter: 'H-4'})-[:`BELONGS TO`]->(H),
    (`H-5`:`Technical Training` {Parameter: 'H-5'})-[:`BELONGS TO`]->(H),
    (`H-6`:`Soft SKills Training` {Parameter: 'H-6'})-[:`BELONGS TO`]->(H),
    (`H-7`:`External Networking` {Parameter: 'H-7'})-[:`BELONGS TO`]->(H),
    (`T-1`:`IT Assets and Configurations` {Parameter: 'T-1'})-[:`BELONGS TO`]->(T),
    (`T-2`:`Information Sources List` {Parameter: 'T-2'})-[:`BELONGS TO`]->(T),
    (`T-3`:`Consolidated Messaging System(s)` {Parameter: 'T-3'})-[:`BELONGS TO`]->(T),
    (`T-4`:`Incident Tracking System` {Parameter: 'T-4'})-[:`BELONGS TO`]->(T),
    (`T-5`:`Resilient Voice Calls` {Parameter: 'T-5'})-[:`BELONGS TO`]->(T),
    (`T-6`:`Resilient Messaging` {Parameter: 'T-6'})-[:`BELONGS TO`]->(T),
    (`T-7`:`Resilient Internet Access` {Parameter: 'T-7'})-[:`BELONGS TO`]->(T),
    (`T-8`:`Incident Prevention Toolset` {Parameter: 'T-8'})-[:`BELONGS TO`]->(T),
    (`T-9`:`Incident Detection Toolset` {Parameter: 'T-9'})-[:`BELONGS TO`]->(T),
    (`T-10`:`Incident Resolution Toolset` {Parameter: 'T-10'})-[:`BELONGS TO`]->(T),
    (`P-1`:`Escalation to Governance Level` {Parameter: 'P-1'})-[:`BELONGS TO`]->(P),
    (`P-2`:`Escalation to Press Function` {Parameter: 'P-2'})-[:`BELONGS TO`]->(P),
    (`P-3`:`Escalation to Legal Function` {Parameter: 'P-3'})-[:`BELONGS TO`]->(P),
    (`P-4`:`Incident Prevention Process` {Parameter: 'P-4'})-[:`BELONGS TO`]->(P),
    (`P-5`:`Incident Detection Process` {Parameter: 'P-5'})-[:`BELONGS TO`]->(P),
    (`P-6`:`Incident Resolution Process` {Parameter: 'P-6'})-[:`BELONGS TO`]->(P),
    (`P-7`:`Specific Incident Processes` {Parameter: 'P-7'})-[:`BELONGS TO`]->(P),
    (`P-8`:`Audit & Feedback Process` {Parameter: 'P-8'})-[:`BELONGS TO`]->(P),
    (`P-9`:`Emergency Reachability Process` {Parameter: 'P-9'})-[:`BELONGS TO`]->(P),
    (`P-10`:`Best Practice Internet Presence` {Parameter: 'P-10'})-[:`BELONGS TO`]->(P),
    (`P-11`:`Secure Information Handling Process` {Parameter: 'P-11'})-[:`BELONGS TO`]->(P),
    (`P-12`:`Information Sources Process` {Parameter: 'P-12'})-[:`BELONGS TO`]->(P),
    (`P-13`:`Outreach Process` {Parameter: 'P-13'})-[:`BELONGS TO`]->(P),
    (`P-14`:`Governance Reporting Process` {Parameter: 'P-14'})-[:`BELONGS TO`]->(P),
    (`P-15`:`Constituency Reporting Process` {Parameter: 'P-15'})-[:`BELONGS TO`]->(P),
    (`P-16`:`Meeting Process` {Parameter: 'P-16'})-[:`BELONGS TO`]->(P),
    (`P-17`:`Peer Colloboration Process` {Parameter: 'P-17'})-[:`BELONGS TO`]->(P),
    (`O-4`)-[:`IS DETAILED`]->(`O-5`),
    (`O-3`)-[:`GAP SIZE`]->(`O-4`),
    (`O-8`)-[:`DEFINE TYPE OF`]->(`O-7`),
    (`O-1`)-[:`DEFINES`]->(`O-10`),
    (`O-2`)-[:`DEFINES`]->(`O-10`),
    (`O-3`)-[:`DEFINES`]->(`O-10`),
    (`O-4`)-[:`DEFINES`]->(`O-10`),
    (`O-5`)-[:`DEFINES`]->(`O-10`),
    (`O-6`)-[:`DEFINES`]->(`O-10`),
    (`O-7`)-[:`DEFINES`]->(`O-10`),
    (`O-8`)-[:`DEFINES`]->(`O-10`),
    (`O-9`)-[:`DEFINES`]->(`O-10`),
    (`O-5`)-[:`IMPACT SIZE OF`]->(`H-2`),
    (`O-7`)-[:`IMPACT SIZE OF`]->(`H-2`),
    (`H-1`)-[:`ALIGNMENT WITH`]->(`O-11`),
    (`H-2`)-[:`ASPECT OF`]->(`O-11`),
    (`H-2`)-[:`ASPECT OF`]->(`T-5`),
    (`H-2`)-[:`ASPECT OF`]->(`T-7`),
    (`H-3`)-[:`DEVELOPED BY`]->(`H-4`),
    (`H-5`)-[:`SUPPORT`]->(`H-4`),
    (`H-6`)-[:`SUPPORT`]->(`H-4`),
    (`H-6`)-[:`ENFORCE`]->(`H-1`),
    (`H-7`)-[:`COLLABORATE WITH`]->(`O-9`);

MATCH
    (a)-[r:`BELONGS TO`]-(b)
    return a,r,b;

MATCH (a)
return a
limit 100;

MATCH (a)-[r]-(b)
return a,r,b
limit 100;
