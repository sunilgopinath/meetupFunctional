# bench/basic_bench.exs
defmodule BasicBench do
  use Benchfella
  require SumRecursiveNaive
  require SumRecursiveTailCallOptimised
  require FibRecursiveNaive
  require FibRecursiveTailCallOptimised
  require BoyerMoore
  Benchfella.start

  bench "hello sum naive" do
    SumRecursiveNaive.sum([1,2,3])
  end

  bench "hello sum tco" do
    SumRecursiveTailCallOptimised.sum([1,2,3])
  end

  bench "hello fib naive" do
    FibRecursiveNaive.fib(10)
  end

  bench "hello fib tco" do
    FibRecursiveTailCallOptimised.fib(10)
  end

  bench "hello BoyerMoore" do
    BoyerMoore.count([1,1,1,1,1,2,2,3])
  end

end
