require './lib/debt_collector'
require 'csv'
file_name = 'invoices.csv'

CSV.foreach(file_name, converters: :numeric, headers: true) do |row|
  companies_debt = DebtCollector.new(row)
  puts companies_debt.display_formatted_output
end
