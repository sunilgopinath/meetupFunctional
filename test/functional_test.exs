defmodule FunctionalTest do
  use ExUnit.Case
  doctest Functional

  test "the truth" do
    assert 1 + 1 == 2
  end
end
