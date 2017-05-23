require 'rails_helper'
require 'bills_controller.rb'

describe BillsController do
  before(:each) do
    @announcement = create(:announcement)
  end

  it 'renders create bill' do
    bill = create(:bill)
    # post :create, announcement_id: @announcement
    # expect(response).should change{ Bill.count }.by(1)
    # expect { Account.create(account: acc) }.to change{ Account.count }.by(1)
      expect{
        post :create, announcement_id: @announcement
      }.to change(Bill,:count).by(1)
  end
end
