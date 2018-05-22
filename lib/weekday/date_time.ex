defimpl Weekday, for: DateTime do
  @moduledoc """
  Weekday support DateTime
  """

  @doc """

  ## Examples

      iex> DateTime.from_naive!(~N[2018-05-19 00:00:00], "Etc/UTC") |> Weekday.day_of_week()
      :saturday

  """
  @spec day_of_week(DateTime.t()) :: Weekday.t()
  def day_of_week(date) do
    Date.day_of_week(date) |> Weekday.day_of_week()
  end
end
