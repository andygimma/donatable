module Donatable
  class ApplicationController < ActionController::Base
    ActsAsTaggableOn.force_lowercase = true
    protect_from_forgery with: :exception
    before_action :set_locale
    before_action :set_current_user

    private

    def set_locale
      if params[:locale]
        cookies[:locale] = params[:locale]
        redirect_back(fallback_location: root_path)
      end
      cookies[:locale] = params[:locale] || cookies[:locale] || I18n.default_locale
      cookies[:locale] = cookies[:locale].to_sym
      I18n.default_locale = cookies[:locale]
    end

    def set_current_user
      @current_user
      if defined? current_user
        @current_user = current_user
      end
      @current_user
    end
  end
end
