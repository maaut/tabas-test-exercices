require_relative "roman_converter"
require_relative "solid_dates"

require "test/unit"

class ExercicesTest < Test::Unit::TestCase
  def test_roman
    assert_equal("I", RomanConverter.new.convert_to_roman(1))
    assert_equal("IX", RomanConverter.new.convert_to_roman(9))
    assert_equal("XX", RomanConverter.new.convert_to_roman(20))
    assert_equal("VII", RomanConverter.new.convert_to_roman(7))
    assert_equal("IV", RomanConverter.new.convert_to_roman(4))
  end

  def test_dates
    input = ["11 Aug 2020", "29 Jan", "27 Jan", "1 Dec 2022", "28 Jan"]
    result = ["11 Aug 2020", "1 Dec 2022"]
    assert_equal(result, SolidDates.new.date_intervals(input))
  end
end
