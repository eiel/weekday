defimpl Weekday, for: Date do
  @spec day_of_week(Date.t()) :: Weekday.t()
  def day_of_week(date) do
    Date.day_of_week(date) |> Weekday.day_of_week()
  end
end
