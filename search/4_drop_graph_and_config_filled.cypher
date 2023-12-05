CALL gds.graph.drop('in-memory-graph-12345')
MATCH (config:GraphConfig {generatedName: 'in-memory-graph-12345'}) DETACH DELETE config;