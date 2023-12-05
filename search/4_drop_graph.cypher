CALL gds.graph.drop($generatedName)
MATCH (config:GraphConfig {generatedName: $generatedName}) DETACH DELETE config;
