defmodule Playground.NoChallenge do
  @spec range(integer, integer) :: list
  def range(n, n), do: [n]
  def range(n, m) when n > m, do: do_descending_range(m, n)
  def range(n, m) when n < m, do: do_ascending_range(m, n)

  defp do_descending_range(n, m, list \\ [])

  defp do_descending_range(n, n, list), do: [n | list]

  defp do_descending_range(n, m, list) do
    list = [n | list]
    do_descending_range(n + 1, m, list)
  end

  defp do_ascending_range(n, m, list \\ [])
  defp do_ascending_range(n, n, list), do: [n | list]

  defp do_ascending_range(n, m, list) do
    list = [n | list]
    do_ascending_range(n - 1, m, list)
  end
end
