defimpl Weekday, for: Date do
  @moduledoc """
  Weekday support Date
  """

  @doc """
  translate `date` to atom type day_of_week

  ## Example

      iex> Weekday.day_of_week(~D[2018-05-19])
      :saturday

  """
  @spec day_of_week(Date.t()) :: Weekday.t()
  def day_of_week(date) do
    Date.day_of_week(date) |> Weekday.day_of_week()
  end
end
