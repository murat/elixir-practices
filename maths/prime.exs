defmodule Prime do
  @moduledoc """
  This is a primality test function

  Algorithm figured out from here
    -> http://www.wikizeroo.com/index.php?q=aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvUHJpbWFsaXR5X3Rlc3QjUHJvYmFiaWxpc3RpY190ZXN0cw
  """

  @doc false
  def check(n) do
    cond do
      n <= 1 ->
        false

      n <= 3 ->
        true

      rem(n, 2) == 0 or rem(n, 3) == 0 ->
        false

      true ->
        loop(5, n)
    end
  end

  @doc false
  defp loop(i, n) do
    case i * i <= n do
      true -> if rem(n, i) == 0 or rem(n, i + 2) == 0, do: false, else: loop(i + 6, n)
      false -> true
    end
  end
end

num = Enum.random(1..1_000)
IO.puts("#{num} " <> "#{Prime.check(num)}")

num = 32767
IO.puts("#{num} " <> "#{Prime.check(num)}")
