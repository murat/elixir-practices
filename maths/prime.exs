defmodule Prime do
  def check(n) do
    cond do
      n <= 1 ->
      false
      n <= 3 ->
        true
      rem(n, 2) == 0 or rem(n, 3) == 0 ->
        false
      true -> loop(5, n)
    end
  end

  defp loop(i, n) do
    case i * i <= n do
      true -> if rem(n, i) == 0 or rem(n, (i + 2)) == 0, do: false, else: loop(i + 6, n)
      false -> true
    end
  end
end

num = Enum.random(1..1_000)
IO.puts("#{num} " <> "#{Prime.check(num)}")

num = 547
IO.puts("#{num} " <> "#{Prime.check(num)}")
