defmodule SumRecursiveTailCallOptimised do
  def sum(list, acc \\ 0)
  def sum([], acc), do: acc
  def sum([head | tail], acc), do: sum(tail, head + acc)
end
