React Coffee Elements
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
Elements = require 'elements'

{div, h1, p} = Elements


div(
  h1 "My great page"
  p "My awesome content"
)
```
