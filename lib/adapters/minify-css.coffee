Adapter = require '../adapter_base'
W = require 'when'

class MinifyCSS extends Adapter

  constructor: (@compiler) ->
    @extensions = ['css']
    @output = 'css'

  compile: (str, options) ->
    W.resolve (new @compiler(options)).minify(str)

module.exports = MinifyCSS
