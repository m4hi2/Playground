defmodule Playground.NoChallenge do
  def range(n, n), do: [n]
  def range(n, m) when n < m, do: []

  def range(n, m) do
    do_range(n, m)
  end

  defp do_range(n, m, list \\ [])

  defp do_range(n, n, list), do: list ++ [n]

  defp do_range(n, m, list) do
    list = list ++ [n]
    do_range(n - 1, m, list)
  end
end
