defmodule Quantum.DateLibraryTest do
  use ExUnit.Case, async: true

  @implementations [
    Quantum.DateLibrary.Timex,
    Quantum.DateLibrary.Calendar,
    Quantum.DateLibrary.Core
  ]

  for module <- @implementations do
    @module module

    describe Atom.to_string(@module) <> ".utc_to_tz!/2" do
      test "shifts zone" do
        date = ~N[2015-01-01 01:00:00]
        expected = ~N[2015-01-01 02:00:00]

        assert @module.utc_to_tz!(date, "Europe/Copenhagen") == expected
      end

      test "errors with invalid timezone" do
        assert_raise Quantum.DateLibrary.InvalidTimezoneError, fn ->
          @module.utc_to_tz!(~N[2018-03-25 02:00:00], "Foobar")
        end
      end
    end

    describe Atom.to_string(@module) <> ".tz_to_utc!/2" do
      test "shifts zone" do
        date = ~N[2015-01-01 02:00:00]
        expected = ~N[2015-01-01 01:00:00]

        assert @module.tz_to_utc!(date, "Europe/Copenhagen") == expected
      end

      test "detects non-existent times" do
        assert_raise Quantum.DateLibrary.InvalidDateTimeForTimezoneError, fn ->
          @module.tz_to_utc!(~N[2018-03-25 02:00:00], "Europe/Zurich")
        end
      end

      test "errors with invalid timezone" do
        assert_raise Quantum.DateLibrary.InvalidTimezoneError, fn ->
          @module.tz_to_utc!(~N[2018-03-25 02:00:00], "Foobar")
        end
      end
    end
  end
end
