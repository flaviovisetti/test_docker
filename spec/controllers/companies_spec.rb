require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
  describe 'GET #show' do
    it 'Show Company created' do
      company = create(:company)

      get :show, params: { id: company }

      expect(response).to be_success
    end
  end
end
