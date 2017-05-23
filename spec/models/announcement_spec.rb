require "rails_helper"


describe Announcement, '#date_format' do
  it 'returns a date like dd/mm/yyyy' do
    # setup
    announcement = create(:announcement)

    # exercise
    result = announcement.date_format

    # verify
    expect(result).to eq strptime("%d/%m/%Y")

    # teardown is handled for you by RSpec
  end
end
