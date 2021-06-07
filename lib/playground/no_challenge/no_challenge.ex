defmodule Playground.NoChallenge do
  @spec range(integer, integer) :: list
  def range(n, n), do: [n]
  def range(n, m), do: do_range(m, n)

  defp do_range(n, m, list \\ [])
  defp do_range(n, n, list), do: [n | list]

  defp do_range(n, m, list) do
    list = [n | list]

    cond do
      n < m -> do_range(n + 1, m, list)
      n > m -> do_range(n - 1, m, list)
      true -> do_range(n, m, list)
    end
  end
end
