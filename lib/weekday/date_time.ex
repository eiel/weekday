defimpl Weekday, for: DateTime do
  @moduledoc """
  Weekday support DateTime
  """

  @doc """
  translate `date_time` to atom type day_of_week

  ## Examples

      iex> DateTime.from_naive!(~N[2018-05-19 00:00:00], "Etc/UTC") |> Weekday.day_of_week()
      :saturday

  """
  @spec day_of_week(DateTime.t()) :: Weekday.t()
  def day_of_week(date_time) do
    Date.day_of_week(date_time) |> Weekday.day_of_week()
  end
end
