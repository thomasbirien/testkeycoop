require "rails_helper"


describe Announcement, '#date_format' do
  it 'returns a date like dd/mm/yyyy' do
    # setup
    announcement = create(:announcement)
    date = DateTime.now.to_date
    date_number = date.strftime("%d/%m/%Y")

    # exercise
    result = announcement.date_format

    # verify
    expect(result).to eq date_number
    # teardown is handled for you by RSpec
  end
end
