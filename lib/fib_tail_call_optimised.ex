defmodule FibRecursiveTailCallOptimised do
  def fib(a) do fib(a, 1, 0) end
  def fib(0, _, accumulator) do accumulator end
  def fib(a, next, accumulator) do fib(a - 1, next + accumulator, next) end
end
