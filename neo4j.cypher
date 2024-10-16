CREATE (p:Person { name: "Sarah" })
CREATE (p:Person { name: "Bruno" })
CREATE (p:Person { name: "Jorge" })

CREATE (c:Class { code: "AMS2024" })

MATCH (p:Person) MATCH (c:Class) CREATE (p)-[r:ATTENDS]->(c) RETURN p, r, c

MATCH (c:Class) CREATE (p:Person { name: "Floriano" })-[r:TEACHES]->(c) RETURN p, r, c

MATCH (p:Person)-[r:ATTENDS]->(:Class) REMOVE r, p
