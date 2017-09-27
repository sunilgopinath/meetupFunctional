defmodule BoyerMoore do
  def count(nums) do
    count(nums, 0, 0)
  end

  defp count([], m, _) do
    m
  end

  defp count(nums, _, 0) do
    [head|tail] = nums
    count(tail, head, 1)
  end

  defp count(nums, m, i) do
    [head|tail] = nums
    if head == m do
      count(tail, m, i + 1)
    else
      count(tail, m, i - 1)
    end
  end
end
