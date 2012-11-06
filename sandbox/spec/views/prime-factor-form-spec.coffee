describe "app.views.PrimeFactorForm", ->
  Given -> @$container = affix('#container')
  Given -> @html = "LOLHTML"
  Given -> spyOn(JST, 'app/templates/prime-factors.us').andReturn(@html)
  Given -> @subject = new app.views.PrimeFactorForm(el: @$container[0])

  Then ->
    expect(@subject.events).toEqual
      "click button#findFactors": "calculate"

  describe "#render", ->
    When -> @subject.render()
    Then -> expect(@$container.text()).toEqual(@html)

  describe "#calculate", ->
    Given -> @number = 99
    Given -> @$input = @subject.$el.affix('input[name=number]').val(@number)
    Given -> @$result = @subject.$el.affix('#result')
    Given -> @event = jasmine.createSpyObj('event', ['preventDefault'])
    Given -> spyOn(window, 'primeFactorsFor').when(@number).thenReturn([12,13])
    When -> @subject.calculate(@event)
    Then -> expect(@$result.text()).toEqual("[12,13]")
    Then -> expect(@event.preventDefault).toHaveBeenCalled()