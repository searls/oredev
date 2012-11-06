describe ".fib", ->
  Then -> expect(fib(0)).toEqual(0)
  Then -> expect(fib(1)).toEqual(1)
  Then -> expect(fib(2)).toEqual(1)
  Then -> expect(fib(3)).toEqual(2)
  Then -> expect(fib(6)).toEqual(8)


  EXAMPLES =
    0: 0
    1: 1
    2: 1
    3: 2
    6: 8



  _(EXAMPLES).each (result, index) ->
    Then -> expect(fib(parseInt(index, 10))).toEqual(result)
