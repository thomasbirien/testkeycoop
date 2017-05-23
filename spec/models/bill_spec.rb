require "rails_helper"

describe Bill, '#date_format' do
  it 'returns a date like dd/mm/yyyy' do
    bill = create(:bill)
    date = DateTime.now.to_date
    date_number = date.strftime("%d/%m/%Y")

    result = bill.date_format

    expect(result).to eq date_number
  end
end

describe Bill do
  it "should have valid factory" do
    bill = build(:bill)
    bill.should be_valid
  end

  it "should require a reference bill" do
    bill = build(:bill, reference_bill: "")
    bill.should_not be_valid
  end
end
