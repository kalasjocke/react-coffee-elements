React = require 'react'

build = (tag) ->
  (options...) ->
    if options[0]['_isReactElement'] or options[0].constructor isnt Object
      options.unshift {}
    React.DOM[tag].apply this, options

module.exports = (->
  object = {}
  for element in Object.keys(React.DOM)
    object[element] = build element
  object
)()
