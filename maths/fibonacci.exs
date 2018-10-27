defmodule Fibonacci do
  @moduledoc false

  @doc """
  Find the number of Fibonacci in the specified sequence

  ## Examples

      iex> Factorial.numbers(1, 1, 0)
      0! = 1
      1! = 1
      2! = 2
      3! = 6
  """
  def fib(a, _, 0) do a end
  def fib(a, b, n) do fib(b, (a + b), (n - 1)) end
end

IO.puts(Fibonacci.fib(1, 1, 1_000))
