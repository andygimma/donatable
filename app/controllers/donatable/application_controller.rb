module Donatable
  class ApplicationController < ActionController::Base
    ActsAsTaggableOn.force_lowercase = true
    protect_from_forgery with: :exception
    before_action :set_locale

    private

    def set_locale
      if params[:locale]
        cookies[:locale] = params[:locale]
        redirect_back(fallback_location: root_path)
      end
      cookies[:locale] = params[:locale] || cookies[:locale] || I18n.default_locale
      I18n.locale = cookies[:locale]
    end
  end
end
