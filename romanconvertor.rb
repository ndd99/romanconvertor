def fromRoman(romanNumber)
  raise TypeError unless romanNumber =~ /[?=MDCLXVI]/

  value = 0
  while romanNumber.length.positive?
    y = romanNumber[-2, 2]
    if y == 'CM'
      value += 900
      romanNumber = romanNumber[0, romanNumber.length - 2]
    elsif y == 'CD'
      value += 400
      romanNumber = romanNumber[0, romanNumber.length - 2]
    elsif y == 'XC'
      value += 90
      romanNumber = romanNumber[0, romanNumber.length - 2]
    elsif y == 'XL'
      value += 40
      romanNumber = romanNumber[0, romanNumber.length - 2]
    elsif y == 'IX'
      value += 9
      romanNumber = romanNumber[0, romanNumber.length - 2]
    elsif y == 'IV'
      value += 4
      romanNumber = romanNumber[0, romanNumber.length - 2]
    else
      y = romanNumber[-1]
      if y == 'M'
        value += 1000
        romanNumber = romanNumber[0, romanNumber.length - 1]
      elsif y == 'D'
        value += 500
        romanNumber = romanNumber[0, romanNumber.length - 1]
      elsif y == 'C'
        value += 100
        romanNumber = romanNumber[0, romanNumber.length - 1]
      elsif y == 'L'
        value += 50
        romanNumber = romanNumber[0, romanNumber.length - 1]
      elsif y == 'X'
        value += 10
        romanNumber = romanNumber[0, romanNumber.length - 1]
      elsif y == 'V'
        value += 5
        romanNumber = romanNumber[0, romanNumber.length - 1]
      elsif y == 'I'
        value += 1
        romanNumber = romanNumber[0, romanNumber.length - 1]
      end
    end
  end
  value
end

def toRoman(arabicNumber)
  raise RangeError if (arabicNumber <= 0) || (arabicNumber > 3999)

  value = ''
  while arabicNumber.positive?
    if arabicNumber >= 1000
      value += 'M'
      arabicNumber -= 1000
    elsif arabicNumber >= 900
      value += 'CM'
      arabicNumber -= 900
    elsif arabicNumber >= 500
      value += 'D'
      arabicNumber -= 500
    elsif arabicNumber >= 400
      value += 'CD'
      arabicNumber -= 400
    elsif arabicNumber >= 100
      value += 'C'
      arabicNumber -= 100
    elsif arabicNumber >= 90
      value += 'XC'
      arabicNumber -= 90
    elsif arabicNumber >= 50
      value += 'L'
      arabicNumber -= 50
    elsif arabicNumber >= 40
      value += 'XL'
      arabicNumber -= 40
    elsif arabicNumber >= 10
      value += 'X'
      arabicNumber -= 10
    elsif arabicNumber >= 9
      value += 'IX'
      arabicNumber -= 9
    elsif arabicNumber >= 5
      value += 'V'
      arabicNumber -= 5
    elsif arabicNumber >= 4
      value += 'IV'
      arabicNumber -= 4
    elsif arabicNumber >= 1
      value += 'I'
      arabicNumber -= 1

    end
  end
  value
end

