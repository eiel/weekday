defimpl Weekday, for: Integer do
  @moduledoc """
  Weekday support Integer
  """

  @doc """
  translate `int` to atom type day_of_week

  ## Examples

      iex> Weekday.day_of_week(7)
      :sunday

  """
  @spec day_of_week(1..7) :: Weekday.t()
  def day_of_week(int) do
    case int do
      1 -> :monday
      2 -> :tuesday
      3 -> :wednesday
      4 -> :thursday
      5 -> :friday
      6 -> :saturday
      7 -> :sunday
    end
  end
end
