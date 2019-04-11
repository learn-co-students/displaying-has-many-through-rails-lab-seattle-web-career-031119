require 'rails_helper'

RSpec.describe AppointmentsController, type: :controller do

  describe "GET #show--no-test-framework" do
    it "returns http success" do
      get :show--no-test-framework
      expect(response).to have_http_status(:success)
    end
  end

end
