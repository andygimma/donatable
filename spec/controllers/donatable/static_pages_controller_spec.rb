require 'spec_helper'

module Donatable
  RSpec.describe StaticPagesController, type: :controller do
    routes { Donatable::Engine.routes }

    describe "GET #home" do
      it "returns http success" do
        get :home
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET #about" do
      it "returns http success" do
        get :about
        expect(response).to have_http_status(:success)
      end
    end

  end
end
