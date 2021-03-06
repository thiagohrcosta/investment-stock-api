require 'rails_helper'

RSpec.describe "Api::V1::Products", type: :request do
  describe "GET /api/v1/products" do
    it "Returns status 200" do
      get api_v1_products_path
      expect(response).to have_http_status(200)
    end
  end
end
