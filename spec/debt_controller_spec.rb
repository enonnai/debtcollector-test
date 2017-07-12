require "debt_collector"

describe DebtCollector do

  describe "#display_formatted_output" do
    it "returns a string containing a company name followed by their debt amount in pounds including VAT" do
      subject = DebtCollector.new("Company name" => "Schmidt Inc", "Invoice number" => "INV-001", "Amount in pence excl vat" => 592499005, "VAT Rate" => 20)
      expect(subject.display_formatted_output).to eq "Schmidt Inc: £7,109,988.06 incl. VAT"
    end
  end

end
