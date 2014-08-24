tpl = require "./end.html"

class endPage extends LA.PageController
    constructor: ->
        @tpl = tpl
        @data = {}
        @render()
        @$padding = @$dom.find "div.padding"
        @_reset()

    start: ->    
        TweenMax.to @$padding, 1, {x: 0, autoAlpha: 1, ease: Elastic.easeInOut}

    stop: ->
        @_reset()

    _reset: ->    
        TweenMax.set @$padding, {x: 100, autoAlpha: 0}

module.exports = endPage