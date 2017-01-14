require 'rails_helper'

RSpec.describe Company, type: :model do
  it 'company information' do
    company = create(:company)
    expect(company.company_name)
      .to eq(FactoryGirl.create(:company).company_name)
  end
end
