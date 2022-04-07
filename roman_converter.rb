class RomanConverter
  def convert_to_roman(number)
    num = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
    sym = ["I", "IV", "V", "IX", "X", "XL", "L", "XC", "C", "CD", "D", "CM", "M"]
    quotient = number
    roman_number = ""
    i = 12
    while quotient > 0
      div = (quotient / num[i]).floor()

      quotient = quotient % num[i]
      while div > 0
        roman_number << sym[i]
        div = div - 1
      end

      i = i - 1
    end

    roman_number
  end
end
