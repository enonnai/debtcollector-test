class DebtCollector

  def initialize(row)
    @row = row
  end

  def calculate_amount_in_pounds_incl_VAT
      ('%.2f' % [@row['Amount in pence excl vat'] / 100.0 * ((@row['VAT Rate']).to_f / 100 + 1 )]).to_s.reverse.gsub(/(\d{3})/,"\\1,").chomp(",").reverse
  end

  def display_formatted_output
      return "#{@row['Company name']}: £#{calculate_amount_in_pounds_incl_VAT} incl. VAT"
  end
end
