defmodule Factorial do
  @moduledoc false

  @doc """
  Get factorial results for the given `numbers`.
  This function will work if `numbers` is a list.

  Returns `console output of factorials given for list`.

  ## Examples

      iex> Factorial.numbers([1,2,3])
      0! = 1
      1! = 1
      2! = 2
      3! = 6
  """
  def numbers(numbers) when is_list(numbers)  do
    for n <- numbers do calculate(n) end
  end

  @doc """
  Get factorial result for the given `number`.
  This function will work if `number` is an integer.

  Returns `console output of factorial given for number`.

  ## Examples

      iex> Factorial.numbers(10)
      10! = 3628800
  """
  def numbers(number) when is_number(number) do calculate(number) end

  @doc false
  def calculate(n) do IO.puts("#{n}! = #{factorial(n)}") end

  @doc false
  defp factorial(n) when (n > 0) do n * factorial(n - 1) end

  @doc false
  defp factorial(n) when (n == 0) do 1 end
end

Factorial.numbers([0, 1, 2, 3, 4, 5])
Factorial.numbers(10)
