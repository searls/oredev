describe ".add", ->
  When -> @result = add(5, 3)
  Then -> expect(@result).toEqual(8)
