defprotocol Weekday do
  @moduledoc """
  Weekday provide day_of_week that return value atom like :monday

  ## Examples

      iex> Weekday.day_of_week(7)
      :sunday

  """

  @type t :: :monday | :tuesday | :wednesday | :thursday | :friday | :saturday | :sunday

  @spec day_of_week(any()) :: Weekday.t()
  def day_of_week(n)
end
