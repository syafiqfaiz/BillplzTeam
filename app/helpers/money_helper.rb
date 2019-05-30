module MoneyHelper
  def to_ringgit(integer)
    @integer = integer.to_f
    number_to_currency(@integer/100, unit: 'RM ')
  end
end