React Coffee Elements [![Build Status](https://travis-ci.org/kalasjocke/react-coffee-elements.svg?branch=master)](https://travis-ci.org/kalasjocke/react-coffee-elements)
=====================



Simplifies writing React DOM elements when using CoffeeScript. Instead of writing:

```coffeescript
React = require 'react'

{div, h1, p} = React.DOM


div {},
  h1 {}, "My great page"
  p {}, "My awesome content"
```

One now can skip the empty option objects and just write:

```coffeescript
Elements = require 'react-coffee-elements'

{div, h1, p} = Elements


div(
  h1 "My great page"
  p "My awesome content"
)
```
