require_dependency "google_sheets_engine/application_controller"

module Donatable
  class PagesController < ApplicationController
    include HighVoltage::StaticPage

    before_filter :authenticate
    layout :layout_for_page

    private

    def layout_for_page
      'application'
    end
  end
end
