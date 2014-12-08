React = require 'react'

Elements = require '../lib/elements'

{div} = Elements


describe 'Elements', ->
  it 'should export an object', ->
    Elements.constructor.should.equal Object

  it 'should expose all React.DOM tags', ->
    for key of React.DOM
      Elements.should.have.property(key)

  it 'should render with options', ->
    React.renderToStaticMarkup(div({className: "bar"}, "foo")).should.equal '<div class="bar">foo</div>'

  it 'should render without options', ->
    React.renderToStaticMarkup(div("foo")).should.equal "<div>foo</div>"

  it 'should render a child element', ->
    React.renderToStaticMarkup(div(div("foo"))).should.equal "<div><div>foo</div></div>"

  it 'should render list of child elements', ->
    React.renderToStaticMarkup(
      div([
        div({key: 'foo'}, "foo"),
        div({key: 'bar'}, "foo"),
      ])).should.equal "<div><div>foo</div><div>foo</div></div>"

    React.renderToStaticMarkup(
      div(
        div "foo"
        div "foo"
      )
    ).should.equal "<div><div>foo</div><div>foo</div></div>"
