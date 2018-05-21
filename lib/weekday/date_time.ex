defimpl Weekday, for: DateTime do
  @spec day_of_week(DateTime.t()) :: Weekday.t()
  def day_of_week(date) do
    Date.day_of_week(date) |> Weekday.day_of_week()
  end
end
