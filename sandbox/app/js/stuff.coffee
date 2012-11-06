root = this

root.fib = (val) ->
  if val is 0 or val is 1 then return val
  fib(val-1) + fib(val-2)