:param limit => ( 42);
:param config => ({
  relationshipWeightProperty: 'cost'
});
:param startNode => ('ibc/223...HP3');
:param endNode => ('ujuno');
:param graphConfig => ({
  nodeProjection: ['derivative', 'token'],
  relationshipProjection: {
    relType1: {
      type: 'ibcTransfer',
      orientation: 'NATURAL',
      properties: {
        cost: 'cost'
      }
    },
    relType2: {
      type: 'exchange',
      orientation: 'NATURAL',
      properties: {
        cost: 'cost'
      }
    }
  }
});
:param communityNodeLimit => ( 10);
:param generatedName => ('in-memory-graph-12345');