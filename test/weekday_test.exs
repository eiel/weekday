defmodule WeekdayTest do
  use ExUnit.Case
  doctest Weekday
  doctest Weekday.Integer
  doctest Weekday.Date
  doctest Weekday.DateTime
  doctest Weekday.NaiveDateTime

  test "Integer" do
    assert Weekday.day_of_week(1) == :monday
    assert Weekday.day_of_week(2) == :tuesday
    assert Weekday.day_of_week(3) == :wednesday
    assert Weekday.day_of_week(4) == :thursday
    assert Weekday.day_of_week(5) == :friday
    assert Weekday.day_of_week(6) == :saturday
    assert Weekday.day_of_week(7) == :sunday

    assert_raise CaseClauseError, fn ->
      Weekday.day_of_week(0)
    end
  end

  test "Undefined Protocol Type" do
    assert_raise Protocol.UndefinedError, fn ->
      Weekday.day_of_week({})
    end
  end

  test "Date" do
    assert Weekday.day_of_week(~D[2018-05-19]) == :saturday
  end

  test "NaiveDateTime" do
    assert Weekday.day_of_week(~N[2018-05-19 00:00:00]) == :saturday
  end

  test "DateTime" do
    assert DateTime.from_naive!(~N[2018-05-19 00:00:00], "Etc/UTC")
           |> Weekday.day_of_week() == :saturday
  end
end
