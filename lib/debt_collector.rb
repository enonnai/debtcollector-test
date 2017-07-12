class DebtCollector

  def initialize(row)
    @row = row
  end

  def display_formatted_output
      return "#{@row['Company name']}: £#{add_comma_separator(add_VAT_to_amount)} incl. VAT"
  end

  private

  def add_comma_separator(amount)
    amount.to_s.reverse.gsub(/(\d{3})/,"\\1,").chomp(",").reverse
  end

  def convert_amount_to_pounds_with_decimals
    @row['Amount in pence excl vat'] / 100.0
  end

  def add_VAT_to_amount
    '%.2f' % ((convert_amount_to_pounds_with_decimals).to_f * (((@row['VAT Rate']).to_f / 100.0) + 1))
  end

end
