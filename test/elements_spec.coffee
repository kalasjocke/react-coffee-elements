React = require 'react'

Elements = require '../lib/elements'

{div} = Elements


describe 'Elements', ->
	it 'should export an object', ->
		Elements.constructor.should.equal Object
