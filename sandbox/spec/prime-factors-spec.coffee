describe ".primeFactorsFor", ->
  EXAMPLES =
    2: [2]
    3: [3]
    4: [2]
    5: [5]
    6: [2, 3]
    7: [7]
    8: [2]
    9: [3]
    10: [2, 5]
    11: [11]
    12: [2, 3]
    13: [13]
    14: [2, 7]
    15: [3, 5]
    16: [2]
    17: [17]
    288: [2, 3]
    330: [2, 3, 5, 11]

  _(EXAMPLES).each (result, key) ->
    n = parseInt(key, 10)
    Then -> expect(primeFactorsFor(n)).toEqual(result)
