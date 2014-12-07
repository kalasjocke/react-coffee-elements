Elements = require '../lib/elements'


describe 'tags', ->
  it 'should export an object', ->
    Elements.constructor.should.equal Object
