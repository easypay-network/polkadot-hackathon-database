CALL db.propertyKeys() YIELD propertyKey MATCH (start) WHERE start[propertyKey] CONTAINS $startNode
WITH start
LIMIT 1
CALL db.propertyKeys() YIELD propertyKey MATCH (end) WHERE end[propertyKey] CONTAINS $endNode
WITH start, end
LIMIT 1
WITH $config AS config, start, end
WITH config { .*, sourceNode: id(start), targetNode: id(end)} AS config
CALL gds.shortestPath.dijkstra.stream($generatedName, config)
YIELD sourceNode, targetNode, nodeIds, costs, path
UNWIND range(0, size(nodeIds)-2) AS index
WITH gds.util.asNode(nodeIds[index]) AS startNode, gds.util.asNode(nodeIds[index+1]) AS endNode, costs[index] AS edgeCost
MATCH (startNode)-[edge]->(endNode)
RETURN startNode, edge, endNode, edgeCost
