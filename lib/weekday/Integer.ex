defimpl Weekday, for: Integer do
  @doc """
  ## Examples

      iex> Weekday.day_of_week(7)
      :sunday

  """
  @spec day_of_week(1..7) :: Weekday.t()
  def day_of_week(n) do
    case n do
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
