require "debt_collector"

describe DebtCollector do

  context 'VAT rate is equal to 20' do
    describe "#display_formatted_output" do
      it "returns a string containing a company name followed by their debt amount in pounds including VAT" do
        subject = DebtCollector.new("Company name" => "Schmidt Inc", "Invoice number" => "INV-001", "Amount in pence excl vat" => 592499005, "VAT Rate" => 20)
        expect(subject.display_formatted_output).to eq "Schmidt Inc: £7,109,988.06 incl. VAT"
      end
    end
  end

  context 'VAT rate is equal to 0' do
    describe "#display_formatted_output" do
      it "returns a string containing a company name followed by their debt amount in pounds including VAT" do
        subject = DebtCollector.new("Company name" => "Lebsack Inc", "Invoice number" => "INV-765", "Amount in pence excl vat" => 32780817, "VAT Rate" => 0)
        expect(subject.display_formatted_output).to eq "Lebsack Inc: £327,808.17 incl. VAT"
      end
    end
  end

  context 'VAT rate is equal to 15' do
    describe "#display_formatted_output" do
      it "returns a string containing a company name followed by their debt amount in pounds including VAT" do
        subject = DebtCollector.new("Company name" => "Lebsack Inc", "Invoice number" => "INV-765", "Amount in pence excl vat" => 273696998, "VAT Rate" => 15)
        expect(subject.display_formatted_output).to eq "Lebsack Inc: £3,147,515.48 incl. VAT"
      end
    end
  end

end
