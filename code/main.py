from py2neo import Graph, Node, Relationship

# Configure the connection to the local Neo4j instance
graph = Graph("bolt://neo4j:password@localhost:7687")

# Create a new organization node
def create_organization(name, methodology):
    org = Node("Organization", name=name, methodology=methodology)
    graph.create(org)
    return org

# Fetch all organizations
def get_all_organizations():
    return graph.nodes.match("Organization")

if __name__ == "__main__":
    # Example usage
    org = create_organization("AvantSec", "SIM3")
    print(f"Created organization: {org['name']} with methodology: {org['methodology']}")

    organizations = get_all_organizations()
    for org in organizations:
        print(f"Organization: {org['name']}, Methodology: {org['methodology']}")
