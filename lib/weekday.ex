defprotocol Weekday do
  @moduledoc """
  Weekday provide day_of_week that return value atom like :monday

  ## Examples

      iex> Weekday.day_of_week(7)
      :sunday

  """

  @type t :: :monday | :tuesday | :wednesday | :thursday | :friday | :saturday | :sunday

  @doc """
  Return type atom for day_of_week.

  Supported type
  - `Integer`
  - `Date`
  - `DateTime`
  - `NaiveDateTime`

  ## Examples

      iex> Enum.map(1..7, &Weekday.day_of_week/1)
      [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]

      iex> Weekday.day_of_week(~D[2018-05-19])
      :saturday

      iex> Weekday.day_of_week(~D[2018-05-19])
      :saturday

      iex> DateTime.from_naive!(~N[2018-05-19 00:00:00], "Etc/UTC") |> Weekday.day_of_week()
      :saturday
  """

  @spec day_of_week(any()) :: Weekday.t()
  def day_of_week(n)
end
