defmodule MaxProfit do
  def maxProfit(prices) do
    [head|tail] = prices
    maxProfit(tail, head, 0)
  end

  def maxProfit([], _, totalProfit) do
    totalProfit
  end

  def maxProfit(prices, minPrice, totalProfit) do
    [head|tail] = prices
    currPrice = head
    potentialProfit = currPrice - minPrice
    totalProfit = max(totalProfit, potentialProfit)
    minPrice = min(minPrice, currPrice)
    maxProfit(tail, minPrice, totalProfit)
  end

end
