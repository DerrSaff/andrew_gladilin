# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  private

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end

  def set_locale
    params[:locale] ||= extract_locale || I18n.default_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def extract_locale
    (request.env['HTTP_ACCEPT_LANGUAGE'] || 'ru').scan(/^[a-z]{2}/).first
  end
end
