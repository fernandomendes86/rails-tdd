require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers

  it 'Create a Customer' do
    customer = create(:customer)
    expect(customer.full_name).to eq("Sr. Abelão")
  end
end
