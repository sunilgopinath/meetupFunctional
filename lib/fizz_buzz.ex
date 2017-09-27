defmodule FizzBuzz do

  def sample() do
    [10, 11, 12, 13, 14, 15, 16] |> (Enum.each fn(n) ->
      IO.puts "FizzBuzz(#{n}):: #{fizzbuzz(n)}"
    end)
  end

  defp fizzbuzz(n) do
    case { rem(n, 3), rem(n, 5), n } do
      { 0, 0, _ } -> "FizzBuzz"
      { 0, _, _ } -> "Fizz"
      { _, 0, _ } -> "Buzz"
      { _, _, n } -> n
    end
  end
end
