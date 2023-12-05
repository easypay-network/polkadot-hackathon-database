CALL gds.graph.project("in-memory-graph-12345", ['derivative', 'token'], {
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
}, {})
