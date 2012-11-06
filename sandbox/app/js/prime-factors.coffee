root = this

root.primeFactorsFor = (n) ->
  factors = []
  remainder = n
  divisor = 2
  while divisor <= remainder
    while remainder % divisor == 0
      factors.push(divisor)
      remainder /= divisor
    divisor++

  _(factors).uniq()