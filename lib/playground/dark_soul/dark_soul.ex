defmodule Playground.Darksoul do
  def darksolify("", _), do: {:error, "Missing parameter"}
  def darksolify(_, ""), do: {:error, "Missing parameter"}
  def darksolify(" ", _), do: {:error, "Missing parameter"}
  def darksolify(_, " "), do: {:error, "Missing parameter"}
end
