from fastapi import FastAPI
from fastapi import Request
from neo4j import GraphDatabase

app = FastAPI()

@app.on_event("startup")
async def startup_event():
    driver = GraphDatabase.driver("bolt://localhost:7687", auth=("neo4j", "sim3P@ss0rD123"))
    with driver.session() as session:
        with open("./SIM3.cypher", "r") as file:
            cypher_queries = file.read().split(";")
            for query in cypher_queries:
                if query.strip():
                    session.run(query.strip())

@app.get("/")
def get_node():
    return {"return": "true"}
