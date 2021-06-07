defmodule Playground.NoChallengeTest do
  @moduledoc false
  use ExUnit.Case
  @moduletag :no_challenge
  alias Playground.NoChallenge

  describe "a range function that take the celling as first argument and floor as second" do
    test "if both arguments are same, the same number is returned in a list" do
      assert NoChallenge.range(5, 5) == [5]
    end

    test "range works in descending order, when the first argument is greater than the second one" do
      assert NoChallenge.range(10, 5) == [10, 9, 8, 7, 6, 5]
      refute NoChallenge.range(10, 5) == [5, 6, 7, 8, 9, 10]
    end

    test "returns an ascending list if the first argument is smaller than the second one" do
      assert NoChallenge.range(5, 10) == [5, 6, 7, 8, 9, 10]
      refute NoChallenge.range(5, 10) == [10, 9, 8, 7, 6, 5]
    end
  end
end
