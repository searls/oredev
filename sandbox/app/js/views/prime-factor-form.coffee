root = this

root.app ||= {}
root.app.views ||= {}

class app.views.PrimeFactorForm extends Backbone.View
  el: '#container'

  template: 'app/templates/prime-factors.us'

  events:
    "click button#findFactors": "calculate"

  render: ->
    @$el.html(JST[@template]())

  calculate: (event) =>
    event.preventDefault()
    number = parseInt(@$('input[name=number]').val(), 10)
    result = primeFactorsFor(number)
    @$('#result').text("[#{result}]")


$ -> new app.views.PrimeFactorForm().render()

