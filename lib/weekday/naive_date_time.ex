defimpl Weekday, for: NaiveDateTime do
  @moduledoc """
  Weekday support Date
  """

  @doc """
  ## Example

      iex> Weekday.day_of_week(~D[2018-05-19])
      :saturday

  """
  @spec day_of_week(NaiveDateTime.t()) :: Weekday.t()
  def day_of_week(date) do
    Date.day_of_week(date) |> Weekday.day_of_week()
  end
end