defimpl Weekday, for: NaiveDateTime do
  @moduledoc """
  Weekday support Date
  """

  @doc """
  translate `naive_date_time` to atom type day_of_week

  ## Example

      iex> Weekday.day_of_week(~D[2018-05-19])
      :saturday

  """
  @spec day_of_week(NaiveDateTime.t()) :: Weekday.t()
  def day_of_week(naive_date_time) do
    Date.day_of_week(naive_date_time) |> Weekday.day_of_week()
  end
end
