require 'rails_helper'

RSpec.describe "Interfaces", :type => :request do
  describe "GET /interfaces" do
    it "works! (now write some real specs)" do
      get interfaces_path
      expect(response.status).to be(200)
    end
  end
end
