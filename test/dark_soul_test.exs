defmodule Playground.DarksoulTest do
  @moduledoc false
  use ExUnit.Case

  describe "checking for valid input" do
    test "only numbers are not valid input" do
      refute Playground.Darksoul.valid?("12345")
    end

    test "alphanumeric user names are allowed" do
      assert Playground.Darksoul.valid?("122darksoul")
    end

    test "only '-', '_', '@', and '.' are allowed in the name" do
      assert Playground.Darksoul.valid?("irfan.ahmed")
      assert Playground.Darksoul.valid?("mafinar_khan")
      assert Playground.Darksoul.valid?("@gittubaba")
      assert Playground.Darksoul.valid?("masnun-groupbaba")
    end

    test "other symbols are not allowed in name" do
      refute Playground.Darksoul.valid?("hasin#")
      refute Playground.Darksoul.valid?("sarim,khan")
      refute Playground.Darksoul.valid?("sarim*khan")
    end
  end

  describe "darksoul of generated line checking" do
    test "test when there are both names present" do
      assert Playground.Darksoul.darksolify("minecraft", "gaming") ==
               {:ok, "minecraft is the darksoul of gaming"}
    end

    test "test when there is only only one name present" do
      assert Playground.Darksoul.darksolify(" ", "programming") == {:error, "Missing parameter"}
      assert Playground.Darksoul.darksolify("Sarim", " ") == {:error, "Missing parameter"}
      assert Playground.Darksoul.darksolify("", "Go") == {:error, "Missing parameter"}
      assert Playground.Darksoul.darksolify("Java", "") == {:error, "Missing parameter"}
    end
  end
end
